FROM ubuntu:latest

RUN apt-get update \
    && apt-get install git bc bison flex libssl-dev make libc6-dev libncurses5-dev crossbuild-essential-armhf crossbuild-essential-arm64 -y \
    && apt-get clean \
    && rm -rf /tmp/* /var/tmp/*
