#!/bin/bash
# cat run_scripts_0604.sh | while read i; do printf "%q\n" "$i"; done | xargs --max-procs=16 -I CMD bash -c CMD

# 01, Random, random, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/01-Random/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -Random 1000 -gpusel random -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/02-DotProd/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/03-GpuClustering/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuClustering 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/04-GpuPacking/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuPacking 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/05-BestFit/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -BestFit 1000 -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/06-FGD/1.3/42" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 42 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/01-Random/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -Random 1000 -gpusel random -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/02-DotProd/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/03-GpuClustering/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuClustering 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/04-GpuPacking/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuPacking 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/05-BestFit/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -BestFit 1000 -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/06-FGD/1.3/43" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 43 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/01-Random/1.3/44" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -Random 1000 -gpusel random -tune 1.3 -tuneseed 44 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/02-DotProd/1.3/44" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 44 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/03-GpuClustering/1.3/44" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuClustering 1000 -tune 1.3 -tuneseed 44 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/04-GpuPacking/1.3/44" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuPacking 1000 -tune 1.3 -tuneseed 44 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/05-BestFit/1.3/44" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -BestFit 1000 -tune 1.3 -tuneseed 44 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/06-FGD/1.3/44" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 44 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/01-Random/1.3/45" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -Random 1000 -gpusel random -tune 1.3 -tuneseed 45 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/02-DotProd/1.3/45" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 45 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/03-GpuClustering/1.3/45" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuClustering 1000 -tune 1.3 -tuneseed 45 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/04-GpuPacking/1.3/45" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuPacking 1000 -tune 1.3 -tuneseed 45 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/05-BestFit/1.3/45" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -BestFit 1000 -tune 1.3 -tuneseed 45 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/06-FGD/1.3/45" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 45 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/01-Random/1.3/46" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -Random 1000 -gpusel random -tune 1.3 -tuneseed 46 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/02-DotProd/1.3/46" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 46 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/03-GpuClustering/1.3/46" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuClustering 1000 -tune 1.3 -tuneseed 46 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/04-GpuPacking/1.3/46" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuPacking 1000 -tune 1.3 -tuneseed 46 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/05-BestFit/1.3/46" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -BestFit 1000 -tune 1.3 -tuneseed 46 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/06-FGD/1.3/46" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 46 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/01-Random/1.3/47" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -Random 1000 -gpusel random -tune 1.3 -tuneseed 47 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/02-DotProd/1.3/47" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 47 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/03-GpuClustering/1.3/47" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuClustering 1000 -tune 1.3 -tuneseed 47 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/04-GpuPacking/1.3/47" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuPacking 1000 -tune 1.3 -tuneseed 47 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/05-BestFit/1.3/47" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -BestFit 1000 -tune 1.3 -tuneseed 47 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/06-FGD/1.3/47" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 47 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/01-Random/1.3/48" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -Random 1000 -gpusel random -tune 1.3 -tuneseed 48 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/02-DotProd/1.3/48" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 48 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/03-GpuClustering/1.3/48" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuClustering 1000 -tune 1.3 -tuneseed 48 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/04-GpuPacking/1.3/48" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuPacking 1000 -tune 1.3 -tuneseed 48 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/05-BestFit/1.3/48" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -BestFit 1000 -tune 1.3 -tuneseed 48 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/06-FGD/1.3/48" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 48 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/01-Random/1.3/49" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -Random 1000 -gpusel random -tune 1.3 -tuneseed 49 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/02-DotProd/1.3/49" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 49 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/03-GpuClustering/1.3/49" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuClustering 1000 -tune 1.3 -tuneseed 49 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/04-GpuPacking/1.3/49" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuPacking 1000 -tune 1.3 -tuneseed 49 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/05-BestFit/1.3/49" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -BestFit 1000 -tune 1.3 -tuneseed 49 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/06-FGD/1.3/49" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 49 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/01-Random/1.3/50" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -Random 1000 -gpusel random -tune 1.3 -tuneseed 50 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/02-DotProd/1.3/50" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 50 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/03-GpuClustering/1.3/50" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuClustering 1000 -tune 1.3 -tuneseed 50 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/04-GpuPacking/1.3/50" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuPacking 1000 -tune 1.3 -tuneseed 50 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/05-BestFit/1.3/50" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -BestFit 1000 -tune 1.3 -tuneseed 50 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/06-FGD/1.3/50" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 50 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 01, Random, random, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/01-Random/1.3/51" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -Random 1000 -gpusel random -tune 1.3 -tuneseed 51 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 02, DotProd, best, merge, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/02-DotProd/1.3/51" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -DotProd 1000 -gpusel best -dimext merge -norm max -tune 1.3 -tuneseed 51 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 03, GpuClustering, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/03-GpuClustering/1.3/51" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuClustering 1000 -tune 1.3 -tuneseed 51 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 04, GpuPacking, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/04-GpuPacking/1.3/51" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -GpuPacking 1000 -tune 1.3 -tuneseed 51 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 05, BestFit, <none>, <none>, <none> @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/05-BestFit/1.3/51" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -BestFit 1000 -tune 1.3 -tuneseed 51 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

# 06, FGD, FGD, share, max @ openb_pod_list_default
EXPDIR="experiments/2023_0604/openb_pod_list_default/06-FGD/1.3/51" && mkdir -p ${EXPDIR} && touch "${EXPDIR}/terminal.out" && python3.8 scripts/generate_config_and_run.py -d "${EXPDIR}" -e -b -f data/openb_pod_list_default -FGD 1000 -gpusel FGD -dimext share -norm max -tune 1.3 -tuneseed 51 --shuffle-pod=true -z "${EXPDIR}/snapshot/ds01" | tee -a "${EXPDIR}/terminal.out" && python3.8 scripts/analysis.py -f -g ${EXPDIR} | tee -a "${EXPDIR}/terminal.out" 

