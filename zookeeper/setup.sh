#/bin/sh

INIT_BIN="/home/vagrant/labs/init"
# init yum repo java lib
bash ${INIT_BIN}/yum_init.sh
# init hosts
bash ${INIT_BIN}/hosts_init.sh
# init zookeeper
bash ${INIT_BIN}/zookeeper_init.sh
# init ssh 
bash ${INIT_BIN}/ssh_init.sh


