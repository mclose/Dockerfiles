FROM alpine:latest
MAINTAINER Matthew Close <md_close@yahoo.com>

RUN apk update \
    && apk add python py-pip \
    && pip install --upgrade pip \
    && pip install csvkit

RUN mkdir /data

WORKDIR /data
