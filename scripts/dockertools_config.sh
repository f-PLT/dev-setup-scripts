#!/usr/bin/env bash

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
             ca-certificates \
             curl \
             gnupg \
             lsb-release
        echo 'Adding GPG key'
        sudo mkdir -p /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

        echo 'Adding Docker to package manager'
        echo \
            "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
            $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
        sudo apt-get update
        sudo chmod a+r /etc/apt/keyrings/docker.gpg

        echo 'Installing Docker'
        sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

        echo 'Adding current user to docker group and'
        sudo groupadd docker
        sudo usermod -aG docker $USER
fi
echo
echo '*'
echo '* Docker configuration script - DONE'
echo '* Please either reboot your machine or execute the following:'
echo '* $ newgrp docker'
echo '*'
