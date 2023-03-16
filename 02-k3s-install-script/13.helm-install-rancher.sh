#!/bin/bash

kubectl create namespace cattle-system

helm template rancher ./rancher/rancher-2.5.15.tgz \
--output-dir ./rancher/ \
--no-hooks \
--namespace cattle-system \
--set hostname=rancher.k3s.hcf \
--set certmanager.version=v1.8.2 \
--set rancherImage=rancher/rancher \
--set useBundledSystemChart=true

kubectl -n cattle-system apply -R -f ./rancher/rancher/
kubectl -n cattle-system apply -f ./rancher/rancher-host.yaml

kubectl get all -n cattle-system
