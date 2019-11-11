FROM openjdk:8-alpine

ENV DISPLAY=":0.1"

RUN apk update && apk add wget gzip tar \
    && wget "https://sourceforge.net/projects/launch4j/files/launch4j-3/3.12/launch4j-3.12-linux-x64.tgz" \
    && tar -xvzf launch4j-3.12-linux-x64.tgz \
    && cp -r /launch4j/* /bin \
    && rm launch4j-3.12-linux-x64.tgz \
    && rm -rf /launch4j/ \
    && rm -rf /var/cache/apk/*
