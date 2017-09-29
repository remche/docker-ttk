# Dockerfile

FROM debian:stretch

RUN apt-get clean && apt-get update && apt-get install -y \
	cython \
	g++ \
	ipython \
	libeigen3-dev \
	libgmp-dev \
	libmpfr-dev \
	python-matplotlib \
	python-numpy \
	python-pip \
	python-scipy \
	python-sphinx \
	python-sphinx-rtd-theme \
	python-tifffile \
	r-base \
	swig

RUN git clone git@gricad-gitlab.univ-grenoble-alpes.fr:ttk/RandomWaffle.git

RUN cd RandomWaffle 

RUN pip install -r requirements.txt

