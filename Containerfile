ARG ALPINE_VERSION=latest
FROM alpine:${ALPINE_VERSION}

MAINTAINER TheGroundZero <2406013+TheGroundZero@users.noreply.github.com>

LABEL org.opencontainers.image.source=https://github.com/TheGroundZero/flicd-container
LABEL org.opencontainers.image.description="Container for flic daemon"
LABEL org.opencontainers.image.licenses=MIT

ENV ARCH=x86_64

RUN apk --no-cache --virtual deps add git && \
    git clone https://github.com/50ButtonsEach/fliclib-linux-hci /tmp/src && \
    cp /tmp/src/bin/${ARCH}/flicd /usr/bin/flicd && \
    chmod +x /usr/bin/flicd && \
    mkdir /config && \
    rm -rf /tmp/src && \
    apk del deps

WORKDIR /config

VOLUME ["/config"]

EXPOSE 5551

ENTRYPOINT ["/usr/bin/flicd", "-f", "/config/db", "-s", "0.0.0.0", "-p", "5551"]