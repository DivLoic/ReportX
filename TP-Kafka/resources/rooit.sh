# here is how we process to install 
# all the materials for this lab

# ssh root@X.X.X.IP (on the 3 IPs)

export TMOUT=0
passwd
# type new password

echo "export TMOUT=0" >> ~/.profile
touch ~/.userrc
echo ". .userrc" >> ~/.bashrc
vi .userrc 

# add the profile template



# we dl the sofware

#wget http://download.oracle.com/otn/java/jdk/7u80-b15/jdk-7u80-linux-x64.tar.gz?AuthParam=...
#wget https://dl.bintray.com/sbt/native-packages/sbt/0.13.12/sbt-0.13.12.tgz
#wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.4.0/elasticsearch-2.4.0.tar.gz
#wget https://repo.continuum.io/archive/Anaconda2-4.1.1-Linux-x86_64.sh
#wget http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.tgz
#wget https://nodejs.org/dist/v4.5.0/node-v4.5.0-linux-x64.tar.xz
#wget https://download.elastic.co/kibana/kibana/kibana-4.6.0-linux-x86_64.tar.gz

#we add the links

ln -s ../lib/elasticsearch-2.4.0/ elasticsearch
ln -s ../lib/sbt/ sbt
ln -s ../lib/scala-2.11.8/ scala 
ln -s ../lib/jdk1.7.0_80/ java
ln -s ../lib/anaconda-4.1.1/ anaconda
ln -s ../lib/kibana-4.6.0-linux-x86_64/ kibana
ln n -s ../lib/node-v4.5.0-linux-x64/ node


# plugin elasticsearch 
plugin install mobz/elasticsearch-head


# WARNING 
#elasticsearch -Des.insecure.allow.root=true

# elasticsearch config
cluster.name: kafka-lab
network.host: 0.0.0.0
discovery.zen.ping.unicast.hosts: ["ip1", "ip2", "ip3"]

# elasticsearch master
node.master: true
node.data: false

# the data 
wget https://dl.dropboxusercontent.com/u/299169754/ml4t.zip


# create the index ... 
curl -XPUT 'http://localhost:9200/stocks/'



_________________________________________________________________

paradigm publish subcribe :
- Producers 
- Consumers
- Messages
- topics


# dl-kafka
# wget http://apache.crihan.fr/dist/kafka/0.10.0.0/kafka_2.11-0.10.0.0.tgz

# configure kafka 
broker.id=*
port=9094
log.dir=/root/log/kafka


# mkdir /root/log/kafka
# mkdir /root/log/zookeeper
# mkdir /root/data/zookeeper

# $ bin/zookeeper-server-start.sh config/zookeeper.properties
# $ bin/kafka-server-start.sh config/server.properties

# configure kafka cluster


### create topic
# bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test
# bin/kafka-topics.sh --list --zookeeper localhost:2181 # how many topics ?