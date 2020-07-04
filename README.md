# cluster-create-easy

## vagrant and virtualbox need
[vagrant下载地址](https://www.vagrantup.com/)
[virtualbox下载地址](https://www.virtualbox.org/)
```shell
# need vagrant plugins
vagrant plugin install vagrant-vbguest
```

## zookeeper cluster for three nodes
```shell
# node[1-3] and zookeeper dir is /home/apps/zookeeper
git clone https://github.com/47oo/cluster-create-easy.git
cd cluster-create-easy/zookeeper
vagrant up 
vagrant ssh node1
```

## mesos cluster for three nodes standalone
```shell
# master agent[1-2] 
cd cluster-create-easy/mesos
vagrant up 
vagrant ssh master
# you can use chrome or curl
curl http://192.168.205.11:5050
```
