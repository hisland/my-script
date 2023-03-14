#!/bin/bash

# 关闭防火墙
systemctl stop firewalld.service --now

# 禁用防火墙
systemctl disable firewalld.service
