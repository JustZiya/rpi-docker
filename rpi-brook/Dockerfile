FROM arm32v6/alpine:3.7

LABEL maintainer="Ziya<Ziya.TLF@Gmail.com>"

RUN apk update \
    && apk add ca-certificates \
    && update-ca-certificates \
    && apk add wget \
    && wget --no-check-certificate https://github.com/txthinking/brook/releases/download/v20180112/brook_linux_arm6 \
    && chmod +x brook_linux_arm6 
    
ENV SERVER_ADDR=
ENV SERVER_PORT=136
ENV PASSWORD=
ENV LOCAL_PORT=1984

EXPOSE $LOCAL_PORT    
    
CMD ./brook_linux_arm6 client -l 0.0.0.0:$LOCAL_PORT -i 0.0.0.0 -s $SERVER_ADDR:$SERVER_PORT -p $PASSWORD
#CMD ["./brook_linux_arm6","client","-l","0.0.0.0:$LOCAL_PORT","-i","0.0.0.0","-s","$SERVER_ADDR:$SERVER_PORT","-p","$PASSWORD"]