FROM alpine:latest

RUN apk add --no-cache bind bash
COPY bind /etc/bind

EXPOSE 53/tcp 53/udp
CMD ["/usr/sbin/named", "-f", "-g"]
