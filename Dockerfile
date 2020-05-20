FROM ruby:alpine
MAINTAINER andrewmk
ENV BUILD_PACKAGES build-base
RUN apk update && \
    apk upgrade && \
    apk add $BUILD_PACKAGES && \
    rm -rf /var/cache/apk/* && \
    gem install lightwaverf && \
    apk del $BUILD_PACKAGES
COPY lightwaverf-config.yml /root/
