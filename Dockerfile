FROM ubuntu:15.04

MAINTAINER Lemarinel Sebastien <lemarinel.s@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# Install packages needed
# - Apache 2    : server Http
# - Php5-fpm    : FPM version of PHP
# - Php5-Cli    : Php Cli
# - Supervisor  : To manage multiple process in the container
RUN apt-get update \
&& apt-get install -y mongodb\
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* \
&& rm -rf /tmp/*

VOLUME ["/data/db"]

EXPOSE 27017

CMD ["mongod"]
