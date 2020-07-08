#!/bin/bash
# mesos workdir
mkdir -p /home/apps/mesos

# zk ha
cat > /etc/mesos/mesos-agent-env.sh<<EOF
# HA zk://zk1:2181,zk2:2181,zk3:2181/mesos
export MESOS_master=zk://zk1:2181,zk2:2181,zk3:2181/mesos
export MESOS_work_dir=/home/apps/mesos
export MESOS_ip=`bash /home/vagrant/labs/mesos/hostname_ip_get.sh`
export MESOS_hostname_lookup=false
export MESOS_log_dir=/var/log/mesos
export MESOS_cluster=TEST
EOF

cat > /etc/mesos/mesos-master-env.sh<<EOF
export MESOS_zk=zk://zk1:2181,zk2:2181,zk3:2181/mesos
export MESOS_work_dir=/home/apps/mesos
export MESOS_ip=`bash /home/vagrant/labs/mesos/hostname_ip_get.sh`
export MESOS_hostname_lookup=false
export MESOS_log_dir=/var/log/mesos
export MESOS_quorum=2
EOF

# start master
[[ `hostname` == "master" ]] && (mesos-daemon.sh mesos-master) || (mesos-daemon.sh mesos-agent) 
