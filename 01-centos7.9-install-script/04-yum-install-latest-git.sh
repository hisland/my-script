#!/bin/bash

# 安装最新的 git

yum -y install https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo.x86_64.rpm
yum install -y git
git --version

git config --global user.name hdl-vm-211
git config --global user.email root@hdl-vm-211
