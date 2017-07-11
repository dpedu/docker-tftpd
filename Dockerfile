FROM ubuntu:xenial

VOLUME /tftp

RUN apt-get update && \
    apt-get install -y tftpd-hpa

ADD start /start

RUN chmod +x /start

ENTRYPOINT ["/start"]

