FROM ubuntu:15.10
RUN  sed -i.bak -r 's/(archive|security).ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
RUN apt-get update && \
	apt-get upgrade -y && \
	
 	apt-get install -y gstreamer-1.0* && \
 	apt-get install -y gstreamer1.0* && \
	apt-get install -y gstreamer-tools && \
 	apt-get install -y aptitude && \
 	cpan Data::Dumper && \
	apt-get install -y vim && \
	apt-get install -y ffmpeg	&& \
	apt-get install -y imagemagick

VOLUME /root/images 
WORKDIR /root/images

