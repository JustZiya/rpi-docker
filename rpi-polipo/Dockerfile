FROM arm32v6/alpine:edge

LABEL maintainer="Ziya<Ziya.TLF@Gmail.com>"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" > /etc/apk/repositories \
    && apk update \
    && apk add polipo

COPY files/polipo/config /etc/polipo/config

ENV SERVER_ADDR=172.18.0.3:1984

EXPOSE 1987

CMD sed -i -e "s|%TOR_SERVER_ADDR%|$SERVER_ADDR|g" /etc/polipo/config \
    && polipo
