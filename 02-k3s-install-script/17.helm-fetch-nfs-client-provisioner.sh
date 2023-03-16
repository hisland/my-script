#!/bin/bash

# 添加依赖
helm repo add apphub https://apphub.aliyuncs.com

# 获取最新的包
helm fetch apphub/nfs-client-provisioner
