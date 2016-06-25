FROM ubuntu:trusty
MAINTAINER admin@steven-west.com

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
        openjdk-7-jdk \
    && apt-get remove --purge -y $BUILD_PACKAGES $(apt-mark showauto) \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT /bin/bash
