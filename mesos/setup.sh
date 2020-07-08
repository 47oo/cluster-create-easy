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

# init mesos HA 如果你要使用ha,则需要对开启zookeeper的对应集群，后开启此配置
# bash ${INIT_BIN}/mesos_ha_init.sh


