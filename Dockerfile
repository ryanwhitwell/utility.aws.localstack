FROM debian:9.4-slim

LABEL Author="Ryan Whitwell (ryanwhitwell.developer@gmail.com)"

RUN apt-get update && apt-get -y upgrade

# install pip
RUN apt-get install -y python-pip

# install aws-local - more information here: https://github.com/localstack/awscli-local
RUN pip install awscli-local

RUN apt-get install -y curl

# copy scripts
ADD scripts/ scripts/