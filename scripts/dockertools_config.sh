#!/bin/bash

# User and group permissions to run docker and
# docker-compose without sudo
echo '*'
echo '* Docker configuration script - STARTING'
echo '*'
echo
echo "Checking if Docker is alreadly installed..."
docker -v
if [ $? != "0" ]
    then
        echo "Installing Docker"
        sudo apt-get install -y \
            apt-transport-https \
            ca-certificates \
            gnupg-agent \
            software-properties-common
        echo 'Adding GPG key'
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

        echo 'Adding Docker to package manager'
        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
        sudo apt-get update

        echo 'Installing Docker'
        sudo apt-get install -y docker-ce docker-ce-cli containerd.io curl

        echo 'Adding current user to docker group and'
        sudo groupadd docker
        sudo usermod -aG docker $USER
fi
echo
echo "Checking if Docker-compose is alreadly installed..."
docker-compose -v
if [ $? != "0" ]
    then
        echo 'Installing docker-compose'
        sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
        echo 'change of permissions for docker-compose'
        sudo chmod +x /usr/local/bin/docker-compose

fi
echo '*'
echo '* Docker configuration script - DONE'
echo '* Please either reboot your machine or execute the following:'
echo '* $ newgrp docker'
echo '*'
