# Dockerfile for DNS Utils
# https://packages.debian.org/bullseys/dnsutils

FROM debian:bullseye-slim

MAINTAINER joe jasper <joe jasper@gmail.com>

#Change source.list
RUN sed -i "s@http://\(deb\|security\).debian.org@http://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list

RUN apt-get update && apt-get install -y bind9-dnsutils

# Clean up.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
