#!/bin/bash

# 放开防火墙设置（若防火墙开启）
firewall-cmd --zone=public --permanent --add-service=rpc-bind
firewall-cmd --zone=public --permanent --add-service=mountd
firewall-cmd --zone=public --permanent --add-service=nfs
firewall-cmd --reload
