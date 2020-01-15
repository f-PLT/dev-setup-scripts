#!/bin/sh

# User and group permissions to run docker and
# docker-compose without sudo
echo '*'
echo '* Docker configuration script - STARTING'
echo '*'
echo 'Adding current user to docker group'
sudo usermod -aG docker $USER
sudo chmod +x /usr/local/bin/docker-compose
echo '*'
echo '* Docker configuration script - DONE'
echo '*'