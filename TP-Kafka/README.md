# Kafka Lab

Kafka is a distributes streaming platform. Also called a *broker* it lets you publish and subscribe to streams of records. This is done in a fault-tolerant way. 

##### Kafka core API

API     | Desciption
--------|----------------------------------------
Producer API        | Allows an application to publish a stream records to one or more Kafka topics.
Consumer API        | Allows an application to subscribe to one or more topics and process the stream of records produced to them.
Streams API         | Allows an application to act as a stream processor, consuming an input stream from one or more topics and producing an output stream to one or more output topics, effectively transforming the input streams to output streams.
Connector API       | Allows building and running reusable producers or consumers that connect Kafka topics to existing applications or data systems. For example, a connector to a relational database might capture every change to a table.

Introduction
==========

### Topics and Logs

### Distribution

Each partition has one server which acts as the "leader" and zero or more servers which act as "followers". The leader handles all read and write requests for the partition while the followers passively replicate the leader.

### Producers

Producers publish data to the topics of their choice. The producer is responsible for choosing which record to assign to which partition within the topic.

### Consumers

Consumers label themselves with a consumer group name, and each record published to a topic is delivered to one consumer instance within each subscribing consumer group. Consumer instances can be in separate processes or on separate machines.


### Storage

Installation
==========

Quik Start
==========

`kafka-topics.sh --list --zookeeper localhost:2181`

#### Single broker test
```{bash}
kafka-topics.sh "--create -zookeeper localhost:2181 
--replication-factor 1  --partitions 1 --topic test"
```

```{bash} 
kafka-console-producer.sh --broker-list localhost:9092 --topic test
```

```{bash}
kafka-console-consumer.sh "--zookeeper localhost:2181 
--bootstrap-server localhost:9092 --topic test --from-beginning"
```
#### Replicated broker test

```{bash}
kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 1 --topic my-replicated-topic
```
`kafka-topics.sh --describe --zookeeper localhost:2181 --topic my-replicated-topic`

```{text}
Topic:my-replicated-topic   PartitionCount:1    ReplicationFactor:3 Configs:
    Topic: my-replicated-topic  Partition: 0    Leader: 3   Replicas: 3,2,1 Isr: 3,2,1
```
