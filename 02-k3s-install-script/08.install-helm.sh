#!/bin/bash

tar zxvf ./helm/helm-v3.9.0-linux-amd64.tar.gz -C ./helm/
cp ./helm/linux-amd64/helm /usr/local/bin/
helm version
