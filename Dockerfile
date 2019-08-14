FROM jupyter/datascience-notebook:latest
MAINTAINER Tristan Stoeber "tristan.stoeber@posteo.net"

USER root

RUN apt update
RUN apt -y install python2.7
RUN apt install -y python-pip
RUN pip2 install scipy==0.17
RUN pip2 install numpy==1.10.4
RUN pip2 install brian==1.4.1
RUN pip2 install sympy

WORKDIR /work/jovyan/