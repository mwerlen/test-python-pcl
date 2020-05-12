FROM ubuntu:16.04

RUN apt-get update -y && apt-get install python3 libpcl-dev python3-pip git -y
RUN pip3 install cython numpy mock
WORKDIR /root
RUN git clone https://github.com/strawlab/python-pcl python-pcl
WORKDIR /root/python-pcl
RUN python3 setup.py install

WORKDIR /source
