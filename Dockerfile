# Dockerfile

FROM debian:stretch

RUN apt-get clean && apt-get update && apt-get install -y \
	ipython \
	libeigen3-dev \
	libgmp-dev \
	libmpfr-dev g++
	python-matplotlib \
	python-numpy \
	python-pip \
	python-scipy \
	python-tifffile \
	r-base \
	swig
