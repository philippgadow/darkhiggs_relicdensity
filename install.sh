#!/bin/bash

set -e

original_dir=$PWD

# get MadGraph
wget https://launchpad.net/mg5amcnlo/2.0/2.9.x/+download/MG5_aMC_v2.9.2.tar.gz
tar -zxvf MG5_aMC_v2.9.2.tar.gz 
rm MG5_aMC_v2.9.2.tar.gz
mg_dir=${original_dir}/MG5_aMC_v2_9_2

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
python2 ${mg_dir}/bin/mg5_aMC tmp_install
rm tmp_install

echo "You can now run ../bin/maddm.py <yourscript>"
