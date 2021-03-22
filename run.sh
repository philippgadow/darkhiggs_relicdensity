#!/bin/bash

set -e

original_dir=$PWD
mg_dir=${original_dir}/MG5_aMC_v2_9_2
run_dir=${mg_dir}/run_relic

mkdir -p ${run_dir}
cd ${run_dir}
# python2 ../bin/maddm.py ${original_dir}/scripts/scan_mchi_200GeV.cmd


result_file="${run_dir}/out_relicdensity_monos/output/scan_run_01.txt"
cat ${result_file}
echo "Inspect results in ${result_file}. Done."
