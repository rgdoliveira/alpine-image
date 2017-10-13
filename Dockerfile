# Builds an Alpine ppc64le image to be used in Alpine ppc64le CI

FROM ppc64le/alpine:latest
MAINTAINER Roberto Oliveira

RUN apk upgrade -U -a
RUN apk add sudo

RUN adduser -D -G root buildozer
RUN echo "buildozer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

ADD build.sh /home/buildozer
RUN chmod +x /home/buildozer/build.sh

USER buildozer
