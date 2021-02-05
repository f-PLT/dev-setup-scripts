#!/bin/bash
echo '*'
echo '* Basictools configuration script - STARTING'
echo '*'
echo 'Installing packages'
sudo apt-get install -y \
build-essential \
software-properties-common \
vim

echo 'Copying vimrc to home'
cp files/vimrc ~/.vimrc

echo '*'
echo '* Basictools configuration script - DONE'
echo '*'
