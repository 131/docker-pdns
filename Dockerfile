FROM alpine:3.13

RUN apk add --no-cache \
    pdns-recursor \
    pdns \
    pdns-backend-mysql


RUN mkdir -p /etc/pdns/api.d \
  && chown -R recursor: /etc/pdns/api.d \
  && mkdir -p /var/run/pdns-recursor \
  && chown -R recursor: /var/run/pdns-recursor


ENTRYPOINT ["/bin/sh", "-c", "pdns_server & pdns_recursor & wait %1 %2"]
LABEL "org.opencontainers.image.version"="0.1.1"
