FROM alpine:latest

LABEL maintainer="Arun Donti <dontirun@gmail.com>"

RUN apk update
RUN apk add alpine-sdk 
RUN apk add libffi-dev \
    openssl-dev
RUN apk add build-base
RUN apk add python3 \
    py3-pip \
    python3-dev
RUN apk add ruby \
    ruby ruby-dev
RUN apk add git
RUN pip3 install --ignore-installed pre-commit 
RUN gem install cfn-nag