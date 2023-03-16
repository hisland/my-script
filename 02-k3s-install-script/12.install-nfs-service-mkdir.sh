#!/bin/bash

# 服务端和客户端主机均需安装
yum install -y ./centos7-rpm/nfs-utils/*

# 设置开机启动
systemctl enable rpcbind
systemctl enable nfs

# 创建NFS共享路径
mkdir -p /app/nfs-server/data/
