FROM python:3.6.11-slim

RUN pip install numpy scipy

RUN apt-get update

RUN apt-get -y install sudo

RUN sudo apt-get clean

RUN sudo apt-get autoremove

RUN sudo apt-get update

RUN sudo apt-get install -f

RUN dpkg --configure -a

RUN mkdir -p /usr/share/man/man1mkdir -p /usr/share/man/man1

RUN apt-get install -y default-jre

EXPOSE 3000
