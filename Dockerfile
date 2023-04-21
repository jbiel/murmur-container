FROM alpine:latest
ARG MURMUR_VERSION

RUN apk update
RUN apk upgrade
RUN apk add murmur

RUN mkdir /data
RUN chown nobody:nobody /data

WORKDIR /data

USER nobody

EXPOSE 64738/tcp
EXPOSE 64738/udp

CMD [ "/usr/bin/murmurd", "-fg"]
