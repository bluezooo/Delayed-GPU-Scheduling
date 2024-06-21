# bin/simon apply --extended-resources "gpu" \
#                   -f data/node_yaml/openb_node_list_gpu_node.yaml \
#                   -s example/test-scheduler-config.yaml


#Run test cases


cd /home/wangyuhang/simulator/experiments
python run_scripts/generate_run_scripts.py > run_scripts/run_scripts_0612.sh
cd ..
cat experiments/run_scripts/run_scripts_0612.sh | xargs --max-procs=16 -I CMD bash -c CMD


# Analysis and plot

cd /home/wangyuhang/simulator/experiments/analysis
bash analysis_merge.sh




# cd /home/wangyuhang/simulator/experiments
# ln -s 2024_0612 data
# cd analysis
# bash analysis_merge.sh
