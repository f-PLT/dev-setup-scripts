#!/bin/bash
echo '*'
echo '* Basictools configuration script - STARTING'
echo '*'
echo 'Installing packages'
sudo apt-get install -y \
build-essential \
software-properties-common \
terminator \
vim

echo 'Copying vimrc to home'
# If using with vagrant, user is "root" when running the script, so:
if [ $USER == "vagrant" ]
then
    cp files/vimrc /home/vagrant/.vimrc
else
    cp files/vimrc ~/.vimrc
fi

echo '*'
echo '* Basictools configuration script - DONE'
echo '*'
