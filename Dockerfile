FROM ubuntu:20.04
ARG PYTHON_VERSION=3.10.10

LABEL MAINTAINER="Jhengsh"

RUN apt-get update
RUN apt-get install -y gcc g++ make wget 
RUn apt-get install -y zlib1g-dev libbz2-dev libbz2-dev libffi-dev libssl-dev libsqlite3-dev liblzma-dev libncurses-dev libreadline-dev 
RUN cd /usr/src && \
    wget https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz && \
    tar xzf Python-${PYTHON_VERSION}.tgz && \
    cd Python-${PYTHON_VERSION} && \
    ./configure && \
    make && \
    make install
RUN /bin/rm -r /usr/src/Python-${PYTHON_VERSION}.tgz
CMD ["/usr/local/bin/python3"]

