#!/bin/bash

kubectl create namespace cert-manager

helm template cert-manager ./cert-manager/cert-manager-v1.8.2.tgz \
--output-dir ./cert-manager/ \
--namespace cert-manager \
--set image.repository=quay.io/jetstack/cert-manager-controller \
--set webhook.image.repository=quay.io/jetstack/cert-manager-webhook \
--set cainjector.image.repository=quay.io/jetstack/cert-manager-cainjector

kubectl apply --validate=false -f ./cert-manager/cert-manager.crds.yaml
kubectl apply -R -f ./cert-manager/cert-manager

kubectl get pods -n cert-manager
