#!/bin/bash
# 创建zookeeper datadir
mkdir /var/lib/zookeeper

# 创建zookeeper唯一识别myid
hostname|cut -c 5 > /var/lib/zookeeper/myid

# zookeeper 存放位置
mkdir /home/apps
# cpoy zookeeper到 /home/apps 目录下面
cp -r /home/vagrant/labs/zookeeper /home/apps/

/home/apps/zookeeper/bin/zkServer.sh start