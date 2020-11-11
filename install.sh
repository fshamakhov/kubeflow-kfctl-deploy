#!/bin/bash
curl -sLO https://github.com/kubeflow/kfctl/releases/download/v1.1.0/kfctl_v1.1.0-0-g9a3621e_linux.tar.gz
tar -xvf kfctl_v1.1.0-0-g9a3621e_linux.tar.gz
sudo mv kfctl /usr/bin/
source env.sh
mkdir -p ${KF_DIR}
cd ${KF_DIR}
kfctl build -V -f ${CONFIG_URI}
#kubectl -n kubeflow get all

# Delete
# cd ${KF_DIR}
# If you want to delete all the resources, run:
# kfctl delete -f ${CONFIG_FILE}
