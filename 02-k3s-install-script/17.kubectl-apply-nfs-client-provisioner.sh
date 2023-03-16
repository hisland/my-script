#!/bin/bash

kubectl create namespace nfs

helm template nfs-client-provisioner ./nfs-client/nfs-client-provisioner-1.2.8.tgz \
--output-dir ./nfs-client/ \
--namespace=nfs \
--set nfs.server=192.168.108.40 \
--set nfs.path=/app/nfs-server/data \
--set image.repository=registry.cn-hangzhou.aliyuncs.com/kubeapps/quay-nfs-client-provisioner \
--set image.tag=v3.1.0-k8s1.11 \

kubectl apply -R -f ./nfs-client/nfs-client-provisioner/ -n nfs
