# Dockerfile

FROM debian:stretch

RUN apt-get clean && apt-get update && apt-get install -y \
	python-pip python-numpy python-scipy g++ git

RUN git clone https://gricad-gitlab.univ-grenoble-alpes.fr/ttk/RandomWaffle.git

RUN cd RandomWaffle && pip install -r requirements.txt 
