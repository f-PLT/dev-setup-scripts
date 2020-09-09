#!/bin/sh

# User and group permissions to run docker and
# docker-compose without sudo
echo '*'
echo '* Docker configuration script - STARTING'
echo '*'
echo 'Adding GPG key'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo 'Adding Docker to package manager'
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update

echo 'Installing Docker'
sudo apt install -y docker-ce docker-ce-cli containerd.io curl

echo 'Installing docker-compose'
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo 'Adding current user to docker group and'
echo 'change of permissions for docker-compose'
sudo usermod -aG docker $USER
sudo chmod +x /usr/local/bin/docker-compose
echo '*'
echo '* Docker configuration script - DONE'
echo '*'
