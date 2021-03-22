#!/bin/bash

set -e

original_dir=$PWD

# get MadGraph
wget https://launchpad.net/mg5amcnlo/2.0/2.6.x/+download/MG5_aMC_v2.6.7.tar.gz
tar -zxvf MG5_aMC_v2.6.7.tar.gz 
mg_dir=${original_dir}/MG5_aMC_v2_6_7

# get UFO models
git clone https://:@gitlab.cern.ch:8443/lhc-dmwg-material/model-repository.git

# put them in the proper MadGraph folder
cd ${mg_dir}/models
cp -r ${original_dir}/model-repository/models/Pseudoscalar_2HDM/ .
cp -r ${original_dir}/DarkHiggs2MDM .

# install MadDM
run_dir=${mg_dir}/run_relic
mkdir ${run_dir}
cd ${run_dir}
cat > tmp_install  << EOF
install maddm
EOF
${mg_dir}/bin/mg5_aMC tmp_install
rm tmp_install

echo "You can now run ../bin/maddm.py <yourscript>"
