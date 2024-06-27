package plugin

import (
	"context"
	"fmt"
	"strconv"

	v1 "k8s.io/api/core/v1"
	"k8s.io/apimachinery/pkg/runtime"
	resourcehelper "k8s.io/kubectl/pkg/util/resource"
	"k8s.io/kubernetes/pkg/scheduler/framework"

	simontype "github.com/hkust-adsl/kubernetes-scheduler-simulator/pkg/type"
	gpushareutils "github.com/hkust-adsl/kubernetes-scheduler-simulator/pkg/type/open-gpu-share/utils"
	"github.com/hkust-adsl/kubernetes-scheduler-simulator/pkg/utils"
)

type DelayScorePlugin struct {
	handle      framework.Handle
	typicalPods *simontype.TargetPodList
}

var _ framework.ScorePlugin = &DelayScorePlugin{}

func NewDelayScorePlugin(_ runtime.Object, handle framework.Handle, typicalPods *simontype.TargetPodList) (framework.Plugin, error) {
	plugin := &DelayScorePlugin{
		handle:      handle,
		typicalPods: typicalPods,
	}

	// allocateGpuIdFunc[plugin.Name()] = allocateGpuIdBasedOnDelayScore
	
	return plugin, nil
}


func (plugin *DelayScorePlugin) Name() string {
	return simontype.DelayScorePluginName
}

func (plugin *DelayScorePlugin) ScoreExtensions() framework.ScoreExtensions {
	return nil
}

func (plugin *DelayScorePlugin) Score(ctx context.Context, state *framework.CycleState, p *v1.Pod, nodeName string) (int64, *framework.Status) {
	if podReq, _ := resourcehelper.PodRequestsAndLimits(p); len(podReq) == 0 {
		return framework.MaxNodeScore, framework.NewStatus(framework.Success)
	}

	nodeResPtr := utils.GetNodeResourceViaHandleAndName(plugin.handle, nodeName)
	if nodeResPtr == nil {
		return framework.MinNodeScore, framework.NewStatus(framework.Error, fmt.Sprintf("failed to get nodeRes(%s)\n", nodeName))
	}
	nodeRes := *nodeResPtr

	podRes := utils.GetPodResource(p)
	if !utils.IsNodeAccessibleToPod(nodeRes, podRes) {
		return framework.MinNodeScore, framework.NewStatus(framework.Error, fmt.Sprintf("Node (%s) %s does not match GPU type request of pod %s\n", nodeName, nodeRes.Repr(), podRes.Repr()))
	}

	score, _ := calculate_delay(nodeRes, podRes, plugin.typicalPods)
	return score, framework.NewStatus(framework.Success)
}


func calculate_delay(nodeRes simontype.NodeResource, podRes simontype.PodResource, typicalPods *simontype.TargetPodList) (score int64, gpuId string) {
	nodeGpuShareFragScore := utils.NodeGpuShareFragAmountScore(nodeRes, *typicalPods)
	if podRes.GpuNumber == 1 && podRes.MilliGpu < gpushareutils.MILLI { // request partial GPU
		score, gpuId = 0, ""
		for i := 0; i < len(nodeRes.MilliGpuLeftList); i++ {
			if nodeRes.MilliGpuLeftList[i] >= podRes.MilliGpu {
				newNodeRes := nodeRes.Copy()
				newNodeRes.MilliCpuLeft -= podRes.MilliCpu
				newNodeRes.MilliGpuLeftList[i] -= podRes.MilliGpu
				newNodeGpuShareFragScore := utils.NodeGpuShareFragAmountScore(newNodeRes, *typicalPods)
				fragScore := int64(sigmoid((nodeGpuShareFragScore-newNodeGpuShareFragScore)/1000) * float64(framework.MaxNodeScore))
				if gpuId == "" || fragScore > score {
					score = fragScore
					gpuId = strconv.Itoa(i)
				}
			}
		}
		return score, gpuId
	} else {
		newNodeRes, _ := nodeRes.Sub(podRes)
		newNodeGpuShareFragScore := utils.NodeGpuShareFragAmountScore(newNodeRes, *typicalPods)
		return int64(sigmoid((nodeGpuShareFragScore-newNodeGpuShareFragScore)/1000) * float64(framework.MaxNodeScore)), simontype.AllocateExclusiveGpuId(nodeRes, podRes)
	}
}

// func allocateGpuIdBasedOnDelayScore(nodeRes simontype.NodeResource, podRes simontype.PodResource, _ simontype.GpuPluginCfg, typicalPods *simontype.TargetPodList) (gpuId string) {
// 	_, gpuId = calculate_delay(nodeRes, podRes, typicalPods)
// 	return gpuId
// }



// package plugin

// import (
// 	"context"
// 	"fmt"
// 	"strconv"
// 	"time"

// 	v1 "k8s.io/api/core/v1"
// 	"k8s.io/apimachinery/pkg/runtime"
// 	resourcehelper "k8s.io/kubectl/pkg/util/resource"
// 	"k8s.io/kubernetes/pkg/scheduler/framework"

// 	simontype "github.com/hkust-adsl/kubernetes-scheduler-simulator/pkg/type"
// 	gpushareutils "github.com/hkust-adsl/kubernetes-scheduler-simulator/pkg/type/open-gpu-share/utils"
// 	"github.com/hkust-adsl/kubernetes-scheduler-simulator/pkg/utils"
// )

// type DelayScorePlugin struct {
// 	handle      framework.Handle
// 	typicalPods *simontype.TargetPodList
// 	taskQueue   []*v1.Pod
// 	nodeScores  map[string]int64
// }

// var _ framework.ScorePlugin = &DelayScorePlugin{}

// func NewDelayScorePlugin(_ runtime.Object, handle framework.Handle, typicalPods *simontype.TargetPodList) (framework.Plugin, error) {
// 	plugin := &DelayScorePlugin{
// 		handle:      handle,
// 		typicalPods: typicalPods,
// 		taskQueue:   make([]*v1.Pod, 0),
// 		nodeScores:  make(map[string]int64),
// 	}
// 	allocateGpuIdFunc[plugin.Name()] = allocateGpuIdBasedOnDelayScore
// 	go plugin.batchScheduler()
// 	return plugin, nil
// }

// func (plugin *DelayScorePlugin) Name() string {
// 	return simontype.DelayScorePluginName
// }

// func (plugin *DelayScorePlugin) Score(ctx context.Context, state *framework.CycleState, p *v1.Pod, nodeName string) (int64, *framework.Status) {
// 	plugin.taskQueue = append(plugin.taskQueue, p)

// 	if podReq, _ := resourcehelper.PodRequestsAndLimits(p); len(podReq) == 0 {
// 		return framework.MaxNodeScore, framework.NewStatus(framework.Success)
// 	}

// 	// Simulate delay for batch scheduling
// 	time.Sleep(100 * time.Millisecond)
// 	nodeResPtr := utils.GetNodeResourceViaHandleAndName(plugin.handle, nodeName)
// 	if nodeResPtr == nil {
// 		return framework.MinNodeScore, framework.NewStatus(framework.Error, fmt.Sprintf("failed to get nodeRes(%s)\n", nodeName))
// 	}
// 	nodeRes := *nodeResPtr

// 	podRes := utils.GetPodResource(p)
// 	if !utils.IsNodeAccessibleToPod(nodeRes, podRes) {
// 		return framework.MinNodeScore, framework.NewStatus(framework.Error, fmt.Sprintf("Node (%s) %s does not match GPU type request of pod %s\n", nodeName, nodeRes.Repr(), podRes.Repr()))
// 	}

// 	score, _ := calculate_delay(nodeRes, podRes, plugin.typicalPods)
// 	return score, framework.NewStatus(framework.Success)
// }

// func (plugin *DelayScorePlugin) ScoreExtensions() framework.ScoreExtensions {
// 	return nil
// }

// func (plugin *DelayScorePlugin) batchScheduler() {
// 	for {
// 		time.Sleep(1 * time.Second) // Batch interval
// 		if len(plugin.taskQueue) > 0 {
// 			plugin.scheduleTasksInBatch()
// 			plugin.taskQueue = plugin.taskQueue[:0]
// 		}
// 	}
// }
// func (plugin *DelayScorePlugin) scheduleTasksInBatch() {
// 	for _, p := range plugin.taskQueue {
// 		nodeInfos, err := plugin.handle.SnapshotSharedLister().NodeInfos().List()
// 		if err != nil {
// 			fmt.Printf("Error getting node info: %v\n", err)
// 			continue
// 		}
// 		for _, nodeInfo := range nodeInfos {
// 			nodeName := nodeInfo.Node().Name
// 			nodeResPtr := utils.GetNodeResourceViaHandleAndName(plugin.handle, nodeName)
// 			if nodeResPtr == nil {
// 				plugin.nodeScores[nodeName] = framework.MinNodeScore
// 				continue
// 			}
// 			nodeRes := *nodeResPtr
// 			podRes := utils.GetPodResource(p)
// 			if !utils.IsNodeAccessibleToPod(nodeRes, podRes) {
// 				plugin.nodeScores[nodeName] = framework.MinNodeScore
// 				continue
// 			}
// 			score, _ := calculateGpuShareFragExtendScore(nodeRes, podRes, plugin.typicalPods)
// 			plugin.nodeScores[nodeName] = score
// 		}
// 	}
// }


// func calculate_delay(nodeRes simontype.NodeResource, podRes simontype.PodResource, typicalPods *simontype.TargetPodList) (score int64, gpuId string) {
// 	nodeGpuShareFragScore := utils.NodeGpuShareFragAmountScore(nodeRes, *typicalPods)
// 	if podRes.GpuNumber == 1 && podRes.MilliGpu < gpushareutils.MILLI { // request partial GPU
// 		score, gpuId = 0, ""
// 		for i := 0; i < len(nodeRes.MilliGpuLeftList); i++ {
// 			if nodeRes.MilliGpuLeftList[i] >= podRes.MilliGpu {
// 				newNodeRes := nodeRes.Copy()
// 				newNodeRes.MilliCpuLeft -= podRes.MilliCpu
// 				newNodeRes.MilliGpuLeftList[i] -= podRes.MilliGpu
// 				newNodeGpuShareFragScore := utils.NodeGpuShareFragAmountScore(newNodeRes, *typicalPods)
// 				fragScore := int64(sigmoid((nodeGpuShareFragScore-newNodeGpuShareFragScore)/1000) * float64(framework.MaxNodeScore))
// 				if gpuId == "" || fragScore > score {
// 					score = fragScore
// 					gpuId = strconv.Itoa(i)
// 				}
// 			}
// 		}
// 		return score, gpuId
// 	} else {
// 		newNodeRes, _ := nodeRes.Sub(podRes)
// 		newNodeGpuShareFragScore := utils.NodeGpuShareFragAmountScore(newNodeRes, *typicalPods)
// 		return int64(sigmoid((nodeGpuShareFragScore-newNodeGpuShareFragScore)/1000) * float64(framework.MaxNodeScore)), simontype.AllocateExclusiveGpuId(nodeRes, podRes)
// 	}
// }

// func allocateGpuIdBasedOnDelayScore(nodeRes simontype.NodeResource, podRes simontype.PodResource, _ simontype.GpuPluginCfg, typicalPods *simontype.TargetPodList) (gpuId string) {
// 	_, gpuId = calculate_delay(nodeRes, podRes, typicalPods)
// 	return gpuId
// }