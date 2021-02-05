#!/bin/bash
echo '*'
echo '* Bash configuration script - STARTING'
echo '*'
echo 'Copying bashrc file to home'
# If using with vagrant, user is "root" when running the script, so:
if [ $HOME == "/root" ]
    then 
        cp files/bashrc /home/vagrant/.bashrc
else
    cp files/bashrc ~/.bashrc
fi

echo '*'
echo '* Bash configuration script - DONE'
echo '* You will need to refresh your bash for it to take effect'
echo '*'