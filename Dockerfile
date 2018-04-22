FROM ubuntu:16.04

RUN apt update && \
 apt upgrade -y && \
 apt install -y python python-pip wget && \
 pip install --upgrade pip

RUN wget https://www.foundationdb.org/downloads/5.1.5/ubuntu/installers/foundationdb-clients_5.1.5-1_amd64.deb && \
 wget https://www.foundationdb.org/downloads/5.1.5/ubuntu/installers/foundationdb-server_5.1.5-1_amd64.deb && \
 dpkg -i foundationdb-clients_5.1.5-1_amd64.deb foundationdb-server_5.1.5-1_amd64.deb && \
 rm foundationdb-clients_5.1.5-1_amd64.deb foundationdb-server_5.1.5-1_amd64.deb && \
 cd /opt && wget https://www.foundationdb.org/downloads/5.1.5/bindings/python/foundationdb-5.1.5.tar.gz && \
 tar xf foundationdb-5.1.5.tar.gz && \
 rm foundationdb-5.1.5.tar.gz && \
 pip install -e foundationdb-5.1.5


