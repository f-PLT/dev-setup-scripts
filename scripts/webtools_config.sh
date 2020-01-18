#!/bin/sh

echo '*'
echo '* NVM configuration script - STARTING'
echo '*'
# Fetch nvm and install stable node
echo 'Installing and configuring nvm packages'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

# The following commands will need to be run in a new terminal
# nvm install stable
# nvm use stable 

echo '*'
echo '* NVM configuration script - DONE'
echo '*'