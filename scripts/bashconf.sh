#!/bin/bash
echo 'Copying bashrc file to home'
# If using with vagrant, user is "root" when running the script, so:
if [ $USER == "root" ]
    then 
        cp files/bashrc /home/vagrant/.bashrc
else
    cp files/bashrc ~/.bashrc
fi