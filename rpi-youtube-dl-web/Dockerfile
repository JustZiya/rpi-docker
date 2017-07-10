#
# youtube-dl Server Dockerfile
#
# https://github.com/kmb32123/youtube-dl-server-dockerfile
#

# Pull base image.
FROM resin/raspberrypi3-alpine-python:3.6.1-slim

# Install ffmpeg.
RUN \
  apk update && \
  apk add --no-cache ffmpeg && \
  pip install --no-cache-dir youtube-dl bottle && \
  mkdir -p /youtube-dl

WORKDIR /youtube-dl

COPY . /youtube-dl

EXPOSE 8080

VOLUME ["/youtube-dl"]

CMD [ "python", "-u", "/youtube-dl/youtube-dl-server.py" ]
