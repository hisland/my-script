#!/bin/bash

mkdir -p /app/k3s/

cp ./k3s/k3s /usr/local/bin/
chmod 755 /usr/local/bin/k3s

export INSTALL_K3S_SKIP_DOWNLOAD=true
export K3S_CLUSTER_INIT=true
export K3S_NODE_NAME=worker-1

export K3S_URL=https://192.168.46.201:6443
export K3S_TOKEN=K10cfdaa7ee0439fc8974d5c348120b451ff6edaaea5018723759d37616d8fa42d7::server:44440c4994a648e801cbc69101b0708c
export INSTALL_K3S_EXEC="--data-dir /app/k3s/"

sh ./k3s/k3s-install.sh
