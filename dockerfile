FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /data/routing
WORKDIR /data/routing
COPY . /data/routing

# Setup
RUN apt-get update && apt-get install -y python3-dev \
                                         python-setuptools \
                                         python3-pip \
                                         uwsgi-plugin-python3
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
