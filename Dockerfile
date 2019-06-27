FROM amazonlinux:2
#https://hub.docker.com/_/amazonlinux

MAINTAINER Gonzalo del Castillo <gdelca5@gmail.com>

RUN yum -y install wget tar bash gzip python python-pip java-1.8.0-openjdk-devel

RUN wget http://apache.mirror.anlx.net/spark/spark-2.4.3/spark-2.4.3-bin-hadoop2.7.tgz
RUN tar -xzf spark-2.4.3-bin-hadoop2.7.tgz && \
    mv spark-2.4.3-bin-hadoop2.7 /spark && \
    rm spark-2.4.3-bin-hadoop2.7.tgz

COPY start-master.sh /start-master.sh
COPY start-worker.sh /start-worker.sh
