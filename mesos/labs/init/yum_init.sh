#!/bin/bash

# aliyun mirrors
yum install wget -y
wget -O /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo
wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo

yum makecache fast

wget -O /home/vagrant/mesos-1.9.0-1.el7.x86_64.rpm  https://dl.bintray.com/apache/mesos/el7/x86_64/mesos-1.9.0-1.el7.x86_64.rpm
wget -O /home/vagrant/mesos-devel-1.9.0-1.el7.x86_64.rpm https://dl.bintray.com/apache/mesos/el7/x86_64/mesos-devel-1.9.0-1.el7.x86_64.rpm
# mesos install
yum localinstall /home/vagrant/mesos-*.rpm -y
