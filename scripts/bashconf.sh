#!/bin/bash
echo '*'
echo '* Bash shell configuration script - STARTING'
echo '*'
echo 'Installing Terminator'
sudo apt-get install terminator
echo 'Copying bashrc file to home'
cp files/bashrc ~/.bashrc

echo '*'
echo '* Bash shell configuration script - DONE'
echo '* You will need to refresh your bash for it to take effect'
echo '*'