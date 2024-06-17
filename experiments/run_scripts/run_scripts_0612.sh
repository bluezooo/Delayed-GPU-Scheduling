#!/bin/bash
# cat run_scripts_0612.sh | while read i; do printf "%q\n" "$i"; done | xargs --max-procs=16 -I CMD bash -c CMD

# 01, Random, random, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2024_0612/openb_pod_list_default/01-Random/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -Random 1000 -gpusel random -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_default
EXPDIR="experiments/2024_0612/openb_pod_list_default/02-DotProd/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2024_0612/openb_pod_list_default/03-GpuClustering/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuClustering 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2024_0612/openb_pod_list_default/04-GpuPacking/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuPacking 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2024_0612/openb_pod_list_default/05-BestFit/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -BestFit 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_default
EXPDIR="experiments/2024_0612/openb_pod_list_default/06-FGD/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_cpu050
EXPDIR="experiments/2024_0612/openb_pod_list_cpu050/01-Random/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_cpu050 -Random 1000 -gpusel random -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_cpu050
EXPDIR="experiments/2024_0612/openb_pod_list_cpu050/02-DotProd/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_cpu050 -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_cpu050
EXPDIR="experiments/2024_0612/openb_pod_list_cpu050/03-GpuClustering/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_cpu050 -GpuClustering 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_cpu050
EXPDIR="experiments/2024_0612/openb_pod_list_cpu050/04-GpuPacking/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_cpu050 -GpuPacking 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_cpu050
EXPDIR="experiments/2024_0612/openb_pod_list_cpu050/05-BestFit/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_cpu050 -BestFit 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_cpu050
EXPDIR="experiments/2024_0612/openb_pod_list_cpu050/06-FGD/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_cpu050 -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_gpushare100
EXPDIR="experiments/2024_0612/openb_pod_list_gpushare100/01-Random/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpushare100 -Random 1000 -gpusel random -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_gpushare100
EXPDIR="experiments/2024_0612/openb_pod_list_gpushare100/02-DotProd/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpushare100 -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_gpushare100
EXPDIR="experiments/2024_0612/openb_pod_list_gpushare100/03-GpuClustering/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpushare100 -GpuClustering 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_gpushare100
EXPDIR="experiments/2024_0612/openb_pod_list_gpushare100/04-GpuPacking/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpushare100 -GpuPacking 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_gpushare100
EXPDIR="experiments/2024_0612/openb_pod_list_gpushare100/05-BestFit/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpushare100 -BestFit 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_gpushare100
EXPDIR="experiments/2024_0612/openb_pod_list_gpushare100/06-FGD/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpushare100 -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_gpuspec10
EXPDIR="experiments/2024_0612/openb_pod_list_gpuspec10/01-Random/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpuspec10 -Random 1000 -gpusel random -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_gpuspec10
EXPDIR="experiments/2024_0612/openb_pod_list_gpuspec10/02-DotProd/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpuspec10 -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_gpuspec10
EXPDIR="experiments/2024_0612/openb_pod_list_gpuspec10/03-GpuClustering/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpuspec10 -GpuClustering 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_gpuspec10
EXPDIR="experiments/2024_0612/openb_pod_list_gpuspec10/04-GpuPacking/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpuspec10 -GpuPacking 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_gpuspec10
EXPDIR="experiments/2024_0612/openb_pod_list_gpuspec10/05-BestFit/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpuspec10 -BestFit 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_gpuspec10
EXPDIR="experiments/2024_0612/openb_pod_list_gpuspec10/06-FGD/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpuspec10 -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_multigpu20
EXPDIR="experiments/2024_0612/openb_pod_list_multigpu20/01-Random/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_multigpu20 -Random 1000 -gpusel random -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_multigpu20
EXPDIR="experiments/2024_0612/openb_pod_list_multigpu20/02-DotProd/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_multigpu20 -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_multigpu20
EXPDIR="experiments/2024_0612/openb_pod_list_multigpu20/03-GpuClustering/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_multigpu20 -GpuClustering 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_multigpu20
EXPDIR="experiments/2024_0612/openb_pod_list_multigpu20/04-GpuPacking/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_multigpu20 -GpuPacking 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_multigpu20
EXPDIR="experiments/2024_0612/openb_pod_list_multigpu20/05-BestFit/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_multigpu20 -BestFit 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_multigpu20
EXPDIR="experiments/2024_0612/openb_pod_list_multigpu20/06-FGD/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_multigpu20 -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2024_0612/openb_pod_list_default/01-Random/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -Random 1000 -gpusel random -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_default
EXPDIR="experiments/2024_0612/openb_pod_list_default/02-DotProd/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2024_0612/openb_pod_list_default/03-GpuClustering/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuClustering 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2024_0612/openb_pod_list_default/04-GpuPacking/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuPacking 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2024_0612/openb_pod_list_default/05-BestFit/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -BestFit 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_default
EXPDIR="experiments/2024_0612/openb_pod_list_default/06-FGD/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_cpu050
EXPDIR="experiments/2024_0612/openb_pod_list_cpu050/01-Random/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_cpu050 -Random 1000 -gpusel random -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_cpu050
EXPDIR="experiments/2024_0612/openb_pod_list_cpu050/02-DotProd/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_cpu050 -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_cpu050
EXPDIR="experiments/2024_0612/openb_pod_list_cpu050/03-GpuClustering/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_cpu050 -GpuClustering 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_cpu050
EXPDIR="experiments/2024_0612/openb_pod_list_cpu050/04-GpuPacking/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_cpu050 -GpuPacking 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_cpu050
EXPDIR="experiments/2024_0612/openb_pod_list_cpu050/05-BestFit/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_cpu050 -BestFit 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_cpu050
EXPDIR="experiments/2024_0612/openb_pod_list_cpu050/06-FGD/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_cpu050 -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_gpushare100
EXPDIR="experiments/2024_0612/openb_pod_list_gpushare100/01-Random/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpushare100 -Random 1000 -gpusel random -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_gpushare100
EXPDIR="experiments/2024_0612/openb_pod_list_gpushare100/02-DotProd/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpushare100 -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_gpushare100
EXPDIR="experiments/2024_0612/openb_pod_list_gpushare100/03-GpuClustering/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpushare100 -GpuClustering 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_gpushare100
EXPDIR="experiments/2024_0612/openb_pod_list_gpushare100/04-GpuPacking/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpushare100 -GpuPacking 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_gpushare100
EXPDIR="experiments/2024_0612/openb_pod_list_gpushare100/05-BestFit/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpushare100 -BestFit 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_gpushare100
EXPDIR="experiments/2024_0612/openb_pod_list_gpushare100/06-FGD/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpushare100 -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_gpuspec10
EXPDIR="experiments/2024_0612/openb_pod_list_gpuspec10/01-Random/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpuspec10 -Random 1000 -gpusel random -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_gpuspec10
EXPDIR="experiments/2024_0612/openb_pod_list_gpuspec10/02-DotProd/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpuspec10 -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_gpuspec10
EXPDIR="experiments/2024_0612/openb_pod_list_gpuspec10/03-GpuClustering/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpuspec10 -GpuClustering 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_gpuspec10
EXPDIR="experiments/2024_0612/openb_pod_list_gpuspec10/04-GpuPacking/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpuspec10 -GpuPacking 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_gpuspec10
EXPDIR="experiments/2024_0612/openb_pod_list_gpuspec10/05-BestFit/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpuspec10 -BestFit 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_gpuspec10
EXPDIR="experiments/2024_0612/openb_pod_list_gpuspec10/06-FGD/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_gpuspec10 -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_multigpu20
EXPDIR="experiments/2024_0612/openb_pod_list_multigpu20/01-Random/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_multigpu20 -Random 1000 -gpusel random -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_multigpu20
EXPDIR="experiments/2024_0612/openb_pod_list_multigpu20/02-DotProd/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_multigpu20 -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_multigpu20
EXPDIR="experiments/2024_0612/openb_pod_list_multigpu20/03-GpuClustering/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_multigpu20 -GpuClustering 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_multigpu20
EXPDIR="experiments/2024_0612/openb_pod_list_multigpu20/04-GpuPacking/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_multigpu20 -GpuPacking 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_multigpu20
EXPDIR="experiments/2024_0612/openb_pod_list_multigpu20/05-BestFit/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_multigpu20 -BestFit 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_multigpu20
EXPDIR="experiments/2024_0612/openb_pod_list_multigpu20/06-FGD/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_multigpu20 -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

