#!/usr/bin/env bash
echo '*'
echo '* Vim configuration script - STARTING'
echo '*'
vim --version
if [ $? != "0" ]
    then
        sudo apt-get install -y vim
fi
echo 'Copying vimrc to home'
cp files/vimrc ~/.vimrc

echo '*'
echo '* Bash shell configuration script - DONE'
echo '* You will need to refresh your bash for it to take effect'
echo '*'