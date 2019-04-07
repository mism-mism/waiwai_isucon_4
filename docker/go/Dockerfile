FROM golang:1.12-alpine

RUN apk update && \
    apk add make git && \
    rm -rf /var/cache/apk/*

RUN apk update && \
    apk add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

EXPOSE 8080
