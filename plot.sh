#!/bin/bash
data="2024_0621"
# python3 merge_alloc_discrete.py "$data" &
# python3 merge_frag_discrete.py "$data" &
# python3 merge_frag_ratio_discrete.py "$data" &
# python3 merge_fail_pods.py "$data" &







cd experiments/"$data"
mkdir -p plot
cp /home/wangyuhang/simulator/experiments/analysis/analysis_results/* plot/  # copy all csv under analysis_results/ to plot/ for analysis
cp /home/wangyuhang/simulator/experiments/plot/*.py plot/
cd plot
python plot_openb_alloc.py              # Fig. 9(a)
python plot_openb_frag_amount.py        # Fig. 7(a)
python plot_openb_frag_ratio.py         # Fig. 7(b)
# python plot_openb_gpushare_alloc_bar.py # Fig. 11
# python plot_openb_multigpu_alloc_bar.py # Fig. 12
# python plot_openb_gpuspec_alloc_bar.py  # Fig. 13
# python plot_openb_nongpu_alloc_bar.py   # Fig. 14


# Wait for all background processes to finish
wait

echo "All scripts have finished running."