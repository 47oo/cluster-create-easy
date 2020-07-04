#!/bin/bash
# 为/etc/hosts追加主机
cat >> /etc/hosts<<EOF
192.168.205.11 master
192.168.205.12 agent1
192.168.205.13 agent2
EOF