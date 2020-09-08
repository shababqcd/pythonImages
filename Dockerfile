FROM python:3.6.11-slim

RUN pip install numpy scipy

RUN apt-get update

RUN apt-get install -y default-jre

EXPOSE 3000
