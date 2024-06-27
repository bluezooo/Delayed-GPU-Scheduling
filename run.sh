# $ bin/simon apply --extended-resources "gpu" \
                #   -f example/test-cluster-config.yaml \
                #   -s example/test-scheduler-config.yaml


#Run test cases
data="2024_0626"

cd /home/wangyuhang/simulator/experiments
python run_scripts/generate_run_scripts.py > run_scripts/run_scripts_"$data".sh
cd ..
cat experiments/run_scripts/run_scripts_"$data".sh | xargs --max-procs=18 -I CMD bash -c CMD


# Analysis and plot

cd /home/wangyuhang/simulator/experiments/analysis
# bash analysis_merge.sh


python3 merge_alloc_discrete.py "$data" &
python3 merge_frag_discrete.py "$data" &
python3 merge_frag_ratio_discrete.py "$data" &
python3 merge_fail_pods.py "$data" &




# cd /home/wangyuhang/simulator/experiments
# ln -s 2024_0612 data
# cd analysis
# bash analysis_merge.sh
