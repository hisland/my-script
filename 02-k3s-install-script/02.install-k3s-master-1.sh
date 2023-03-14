#!/bin/bash

mkdir -p /app/k3s/

cp ./k3s/k3s /usr/local/bin/
chmod 755 /usr/local/bin/k3s

export INSTALL_K3S_SKIP_DOWNLOAD=true
export K3S_CLUSTER_INIT=true
export K3S_NODE_NAME=master-1

export INSTALL_K3S_EXEC="server --data-dir /app/k3s/ --kube-apiserver-arg feature-gates=RemoveSelfLink=false --kube-apiserver-arg service-node-port-range=1-65000 --write-kubeconfig ~/.kube/config --write-kubeconfig-mode 666"

sh ./k3s/k3s-install.sh
