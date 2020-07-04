#!/bin/bash
# mesos work_dir
mkdir -p /home/apps/mesos

cat > /etc/mesos/mesos-agent-env.sh<<EOF
export MESOS_master=192.168.205.11:5050
export MESOS_work_dir=/home/apps/mesos
export MESOS_ip=`bash /home/vagrant/labs/mesos/hostname_ip_get.sh`
export MESOS_hostname_lookup=false
export MESOS_log_dir=/var/log/mesos
EOF

cat > /etc/mesos/mesos-master-env.sh<<EOF
export MESOS_work_dir=/home/apps/mesos
export MESOS_ip=`bash /home/vagrant/labs/mesos/hostname_ip_get.sh`
export MESOS_hostname_lookup=false
export MESOS_log_dir=/var/log/mesos
EOF

# start master
[[ `hostname` == "master" ]] && (mesos-daemon.sh mesos-master) || (mesos-daemon.sh mesos-agent) 
