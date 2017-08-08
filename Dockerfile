FROM alpine:3.4

MAINTAINER canhnt@gmail.com

EXPOSE 4222 6222 8222

RUN apk update && \
    apk add --no-cache ca-certificates openssl

RUN wget -q https://github.com/nats-io/nats-streaming-server/releases/download/v0.5.0/nats-streaming-server-v0.5.0-linux-386.zip -O /tmp/nats-streaming-server.zip && \
    unzip /tmp/nats-streaming-server.zip -d / && \
    mv /nats-streaming-server-v0.5.0-linux-386 /opt/ && \
    rm /tmp/nats-streaming-server.zip

CMD [ "/opt/nats-streaming-server" ]

