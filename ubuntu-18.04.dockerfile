FROM ubuntu:18.04

LABEL org.opencontainers.image.revision="-"
LABEL org.opencontainers.image.source="https://github.com/klo2k/stunnel-docker"

RUN \
  apt update && \
  apt install -y stunnel4 && \
  apt clean

# We run this with a custom stunnel.conf via docker-compose
EXPOSE 80

CMD ["stunnel", "/root/stunnel.conf"]
