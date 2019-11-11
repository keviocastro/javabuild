FROM openjdk:8

ENV DISPLAY=":0.1"

RUN apt-get update && apt-get install -y wget gzip tar maven \
    && wget "https://sourceforge.net/projects/launch4j/files/launch4j-3/3.12/launch4j-3.12-linux-x64.tgz" \
    && tar -xvzf launch4j-3.12-linux-x64.tgz \
    && cp -r /launch4j/* /bin \
    && rm launch4j-3.12-linux-x64.tgz \
    && rm -rf /launch4j/ \
    && chmod +x /bin/launch4j \
    && chmod +x /bin/bin/windres \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

ENTRYPOINT ["launch4j"]