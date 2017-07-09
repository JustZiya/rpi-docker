# 基础镜像
FROM resin/raspberrypi3-alpine-python:slim

# 维护者信息
MAINTAINER Ziya <Ziya.TLF@gmail.com>

RUN apk update && apk add bash autoconf g++

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

# 基础镜像已经包含pip组件
RUN pip install --no-cache-dir -r requirements.txt

ENV PORT 80
EXPOSE $PORT/tcp

# 添加挂载点
VOLUME ["/usr/src/app/"]

CMD ["python","/usr/src/app/run.py"]