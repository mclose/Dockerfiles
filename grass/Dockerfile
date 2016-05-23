FROM ubuntu:vivid

MAINTAINER Matthew Close "https://github.com/mclose"

RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:ubuntugis/ubuntugis-unstable && \
    add-apt-repository ppa:grass/grass-stable && \
    apt-get update && \
    apt-get -y install grass
