FROM arm32v6/alpine:3.7

LABEL maintainer="Ziya<Ziya.TLF@Gmail.com>"

ENV VER 0.16.0

RUN apk update \
    && apk add ca-certificates \
    && update-ca-certificates \
    && apk add wget \
    && wget --no-check-certificate https://github.com/fatedier/frp/releases/download/v${VER}/frp_${VER}_linux_arm.tar.gz \
    && tar -xvf frp_${VER}_linux_arm.tar.gz \
    && rm frp_${VER}_linux_arm.tar.gz \
    && cd frp_${VER}_linux_arm \
    && chmod +x frpc \
    && cp frpc /usr/local/bin \
    && mkdir /etc/frp \
    && cp frpc.ini /etc/frp \
    && cd .. \
    && rm -rf frp_${VER}_linux_arm

VOLUME /etc/frp

CMD ["frpc","-c","/etc/frp/frpc.ini"]

