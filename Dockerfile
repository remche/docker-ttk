# Dockerfile

FROM debian:stretch

RUN apt-get clean && apt-get update && apt-get install -y \
	python-pip python-numpy python-scipy python-matplotlib python-tifffile ipython \
	libeigen3-dev r-base libgmp-dev libmpfr-dev g++

RUN git clone git@gricad-gitlab.univ-grenoble-alpes.fr:ttk/RandomWaffle.git

RUN cd RandomWaffle 

RUN pip install -r requirements.txt
