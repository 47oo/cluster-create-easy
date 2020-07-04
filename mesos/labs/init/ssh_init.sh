#!/bin/bash
# 制作免密登陆，允许所有机器相互免密登陆
cp -r /home/vagrant/labs/ssh_key/*  /home/vagrant/.ssh/
cat /home/vagrant/labs/ssh_key/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub