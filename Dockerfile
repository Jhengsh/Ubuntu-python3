FROM ubuntu:16.04

LABEL MAINTAINER="Jhengsh"

RUN apt-get update
RUN apt-get install -y software-properties-common vim
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update
RUN apt-get install -y python3.6 python3-pip
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1

CMD ["/usr/bin/python3"]
