#!/bin/bash

setenforce 0
sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config

yum install -y ./centos7-rpm/container-selinux/*
yum install -y ./centos7-rpm/selinux-policy-base/*
yum install -y ./centos7-rpm/k3s-selinux-0.2-1.el7_8.noarch.rpm
