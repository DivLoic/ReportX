#!/bin/bash

export PS1="\[\033[31;1m\]\]\w • \u $>\[\033[0m\]\]"

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

# -- rethinkdb
export RTDB_HOME=$APP_DIR/rethinkdb

export PATH=$JAVA_HOME/bin:$PATH
export PATH=$CONDA_HOME/bin:$PATH
export PATH=$SBT_HOME/bin:$PATH
export PATH=$SCALA_HOME/bin:$PATH
export PATH=$ACTIVATOR/bin:$PATH
export PATH=$ES_HOME/bin:$PATH
export PATH=$KFK_HOME/bin:$PATH
export PATH=$NODE_HOME/bin:$PATH
export PATH=$KB_HOME/bin:$PATH
export PATH=$RTDB_HOME/build/release:$PATH

# alias
alias rc='vi ~/.userrc'
alias up='sudo apt-get update && sudo apt-get upgrade'
alias els='elasticsearch -d -Des.insecure.allow.root=true'
alias rethinkdb='rethinkdb --config-file ~/rethinkdb_dev.conf'
alias jup='jupyter notebook --port 3333 --notebook-dir=$HOME/notebook'

alias zoostart='zookeeper-server-start.sh -daemon $KFK_HOME/config/zookeeper.properties'
alias zoostop='zookeeper-server-stop.sh'

alias kafstart='kafka-server-start.sh -daemon $KFK_HOME/config/server.properties'
alias kafstop='kafka-server-stop.sh'
