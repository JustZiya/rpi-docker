FROM resin/raspberrypi3-alpine-python:3.6.1-slim

MAINTAINER Ziya<Ziya.TLF@Gmail.com>

RUN apk add --no-cache ffmpeg git

RUN pip install bottle

RUN git clone https://github.com/demoshow/you-get.git  /var/you-get

WORKDIR /var/you-get
VOLUME /var/you-get

RUN python3 setup.py install

EXPOSE 8080

CMD python3 you-get-web


