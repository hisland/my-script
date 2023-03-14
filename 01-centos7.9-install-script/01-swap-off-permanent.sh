#!/bin/bash

# 永久关闭swap分区, 修改后重启, 其实就是把 swap 后注释掉
sed -ri 's/.*swap.*/#&/' /etc/fstab
