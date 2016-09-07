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

#!/bin/bash

export PS1="\[\033[35;1m\]\]\w • \u $>\[\033[0m\]\]"

export LIB_DIR=$HOME/lib
export APP_DIR=$HOME/products
export WORKDIR=$HOME/workspace

# -- java
export JAVA_HOME=$APP_DIR/java

# -- scala
export SBT_HOME=$APP_DIR/sbt
export ACTIVATOR=$APP_DIR/activator
export SCALA_HOME=$APP_DIR/scala

# -- elasticsearch
export ES_HOME=$APP_DIR/elasticsearch
export KB_HOME=$APP_DIR/kiana

# -- kafka
export KFK_HOME=$APP_DIR/kafka

# -- Node 
export NODE_HOME=$APP_DIR/node

# -- Python
export CONDA_HOME=$APP_DIR/anaconda
alias jup='jupyter notebook --port 3333 --notebook-dir=$HOME/notebook'

export PATH=$JAVA_HOME/bin:$PATH
export PATH=$CONDA_HOME/bin:$PATH
export PATH=$SBT_HOME/bin:$PATH
export PATH=$SCALA_HOME/bin:$PATH
export PATH=$ACTIVATOR/bin:$PATH
export PATH=$ES_HOME/bin:$PATH
export PATH=$KFK_HOME/bin:$PATH
export PATH=$NODE_HOME/bin:$PATH
export PATH=$KB_HOME/bin:$PATH

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
plugin install license
plugin install marvel-agent

# WARNING 
#elasticsearch -Des.insecure.allow.root=true

# elasticsearch config
cluster.name: kafka-lab
network.host: 0.0.0.0
discovery.zen.ping.unicast.hosts: ["ip1", "ip2", "ip3"]
