#!/bin/bash
# 为/etc/hosts追加主机
cat >> /etc/hosts<<EOF
192.168.205.101 node1
192.168.205.102 node2
192.168.205.103 node3
EOF