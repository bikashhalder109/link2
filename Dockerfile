FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git python3-pip -y
RUN pip3 install -U pip
WORKDIR /bgt/
COPY . /bgt/
RUN pip3 install -r Installer
CMD python3 Bikash.py
