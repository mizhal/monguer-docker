FROM alpine:3.4

RUN echo http://dl-4.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk add --no-cache mongodb

VOLUME /data/db
EXPOSE 27017 27018 27019 28017

ENTRYPOINT [ "mongod" ]

