#!/bin/bash

# install wget ,install  alibaba mirrors repo
yum install wget -y
wget -O /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo
wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo
yum makecache fast
# install java centos7 default openjdk 1.8 ,无须再配置JAVA_HOME等环境变量
yum -y install java