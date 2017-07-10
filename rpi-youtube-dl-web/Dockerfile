#
# youtube-dl Server Dockerfile
#
# https://github.com/kmb32123/youtube-dl-server-dockerfile
#

# Pull base image.
FROM resin/raspberrypi3-alpine-python:3.6.1-slim

# Install ffmpeg.
RUN \
  apk add --no-cache ffmpeg git&& \
  pip install --no-cache-dir youtube-dl bottle && \
  git clone https://github.com/manbearwiz/youtube-dl-server.git /youtube-dl

EXPOSE 8080

VOLUME ["/youtube-dl"]

CMD [ "python", "-u", "/youtube-dl/youtube-dl-server.py" ]
