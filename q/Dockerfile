FROM alpine:latest
MAINTAINER Matthew Close <md_close@yahoo.com>

RUN apk update \
    && apk add python py-pip openssl\
    && pip install --upgrade pip

RUN wget -O /bin/q https://cdn.jsdelivr.net/gh/harelba/q@1.5.0/bin/q \
    && chmod +x /bin/q

RUN mkdir /data
WORKDIR /data
