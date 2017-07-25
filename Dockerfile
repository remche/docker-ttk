# Dockerfile

FROM debian:stretch

RUN apt-get clean && apt-get update && apt-get install -y \
	python-pip python-numpy python-scipy g++ git

RUN pip install -r requirements.txt 
