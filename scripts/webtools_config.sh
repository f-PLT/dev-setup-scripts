#!/usr/bin/env bash
echo '*'
echo '* Web tools configuration script - STARTING'
echo '*'

echo 'Configuring NVM'
# Fetch nvm and install stable node
echo 'Installing and configuring nvm packages'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

echo 'The following commands will need to be run in a new terminal'
echo '$ nvm install stable'
echo '$ nvm use stable' 

echo '*'
echo '* Web tools configuration script - DONE'
echo '*'
