FROM ubuntu:20.04
MAINTAINER ryanmeharg@gmail.com

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    doxygen graphviz git \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
