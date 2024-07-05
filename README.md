# Immudb

[Immudb](https://immudb.io/) is a database created by Codenotary. 
As an immutable multi-model database that separates compute and storage, 
this is a pretty interesting project. 
This little collection of scripts and configuration is a byproduct of my learning process.

The kubernetes config in here is based on the config shown in 
[this blog post](https://immudb.io/blog/pushing-new-technology-the-hard-way-part2).


## Running locally

```
     data_received........: 0 B 0 B/s
     data_sent............: 0 B 0 B/s
     iteration_duration...: avg=43.85ms min=735ns med=44.48ms max=48.69ms p(90)=45.54ms p(95)=46.38ms
     iterations...........: 112 22.392567/s
     vus..................: 1   min=1       max=1
     vus_max..............: 1   min=1       max=1

```
## With the S3 Backend

```
     data_received........: 0 B 0 B/s
     data_sent............: 0 B 0 B/s
     iteration_duration...: avg=43.68ms min=693ns med=44.29ms max=50.36ms p(90)=45.2ms p(95)=45.54ms
     iterations...........: 113 22.482807/s
     vus..................: 1   min=1       max=1
     vus_max..............: 1   min=1       max=1

```
