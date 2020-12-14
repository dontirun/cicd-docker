FROM alpine:latest

LABEL maintainer="Arun Donti <dontirun@gmail.com>"

RUN apk update
RUN apk add python3 \
    py3-pip
RUN apk add ruby \
    ruby ruby-dev
RUN apk add git
RUN pip3 install --ignore-installed pre-commit 
RUN gem install cfn-nag