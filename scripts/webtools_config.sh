#!/usr/bin/env bash
echo '*'
echo '* Web tools configuration script - STARTING'
echo '*'

echo 'Installing Yarn'
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get install yarn -y
echo

echo 'Configuring NVM'
# Fetch nvm and install stable node
echo 'Installing and configuring nvm packages'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo 'The following commands will need to be run in a new terminal'
echo '$ nvm install stable'
echo '$ nvm use stable' 

echo '*'
echo '* Web tools configuration script - DONE'
echo '*'
