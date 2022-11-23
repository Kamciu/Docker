#!/bin/bash

#---------------------------------#
#     RECONFIHURE LOCAL DNS       #
#---------------------------------#

# change dir and pull.
cd /home/$USER/GIT/strefakursowdockerkurs/dns-docker
#git pull

docker rm -f koska-dns

# remove mydns image.
docker rmi mydns

# rebuild local image.
docker build -t mydns .

# remove dns container.
#docker rm -f koska-dns

# start DNS container.
docker run --name koska-dns -d --restart=unless-stopped -p 53:53/tcp -p 53:53/udp mydns

# show all started docker
docker ps -a
