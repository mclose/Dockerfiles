FROM golang:alpine
MAINTAINER Matthew Close <md_close@yahoo.com>

ENV GOPATH /go
ENV PATH /go/bin:$PATH

RUN apk update && apk add \
        git \
        && rm -rf /var/cache/apk/*

RUN go get github.com/jehiah/json2csv

RUN mkdir /data

WORKDIR /data
