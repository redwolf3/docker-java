FROM ubuntu:trusty
MAINTAINER admin@steven-west.com

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
        openjdk-7-jdk \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT /bin/bash
