#!/bin/bash

echo "/app/nfs-server/data/ *(rw,sync,no_root_squash)" >> /etc/exports

chmod 777 -R /app/nfs-server/data/

# 启动服务，先 rpcbind 后 nfs
systemctl restart rpcbind
systemctl restart nfs

# 验证，检查本机的共享路径
showmount -e localhost

