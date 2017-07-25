FROM resin/rpi-raspbian:jessie

MAINTAINER Ziya <Ziya.TLF@Gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y polipo

COPY files/polipo/config /etc/polipo/config
COPY files/entrypoint.sh /entrypoint.sh

EXPOSE 1987
ENTRYPOINT ["/entrypoint.sh"]

