FROM ubuntu-debootstrap:14.04
MAINTAINER rvalyi "rvalyi@akretion.com"

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y git python3-uno python3-pip openjdk-7-jre && \
    apt-get clean

RUN pip3 install jsonrpc2
RUN pip3 install daemonize

RUN git clone https://github.com/aeroo/aeroo_docs.git /aeroo_docs
