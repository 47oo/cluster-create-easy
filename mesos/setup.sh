#/bin/sh

INIT_BIN="/home/vagrant/labs/init"
# init yum repo 
bash ${INIT_BIN}/yum_init.sh
# init hosts
bash ${INIT_BIN}/hosts_init.sh
# init ssh 
bash ${INIT_BIN}/ssh_init.sh
# init mesos
bash ${INIT_BIN}/mesos_init.sh


