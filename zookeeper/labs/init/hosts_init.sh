#!/bin/bash
# 为/etc/hosts追加主机
cat >> /etc/hosts<<EOF
192.168.205.101 zk1
192.168.205.102 zk2
192.168.205.103 zk3
EOF
