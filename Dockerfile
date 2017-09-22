FROM alpine:latest

RUN apk update              && \
    apk add python          && \
    apk add python-dev      && \
    apk add py-pip          && \
    pip install platformio  && \
    mkdir -p /tmp/build     && \
    rm -rf /var/cache/apk/*

WORKDIR /tmp/build
ENTRYPOINT ["pio","run"]
