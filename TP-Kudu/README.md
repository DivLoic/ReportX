# Lab Apache Kudu

## Why Apache Kudu

### The existing systems
- HDFS
    - [X] Batch 
    - [X] Aggregation
    - [X] Machine Learning 
    - [ ] No efficient random accesses

- HBASE ()
    - [X] Lookup individuals row
    - [X] Read / Write by records
    - [ ] No efficient analytics

### Apache Kudu Design Goals
- High throughput for big scan
- Low Latency for short accesses

### Harware evolution

## The Overview

#### Data Model
A Kudu cluster stores tables that look just like tables from relational (SQL) databases. Every table has a PRIMARY KEY made up of one or more columns. It can be as simple as an binary key and value, or as complex as a few hundred different strongly-typed attributes.

#### Low-latency random access
Access to a single row `SELECT * FROM tablet WHERE ...` is millisecond-scale.
For "NoSQL"-style access, you can choose between Java, C++, or Python APIs.

####
####

##

## Installation

> easier with cloudera manager version 5.4.7

