FROM ubuntu:trusty

ENV UPDATED_AT 2015-07-23 14:16

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
    echo deb http://repos.mesosphere.io/ubuntu trusty main > /etc/apt/sources.list.d/mesosphere.list && \
    apt-get update && \
    apt-get -y install mesos=0.21.1-1.1.ubuntu1404

ENV MESOS_WORK_DIR /tmp/mesos

