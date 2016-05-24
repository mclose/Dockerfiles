FROM alpine:latest

RUN apk update && apk add \
                    ca-certificates \
                    wget

RUN wget --quiet http://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 \
        && mv jq-linux64 /bin/jq \
        && chmod +x /bin/jq

RUN apk del wget ca-certificates \
        && rm -rf /var/cache/apk/*

RUN mkdir /data
WORKDIR /data
