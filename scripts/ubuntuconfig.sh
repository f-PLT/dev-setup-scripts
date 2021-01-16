#!/bin/bash
# bashrc config
echo '*'
echo '* Ubuntu config setup script - STARTING'
echo '*'
sudo apt install -y gnome-tweaks
echo 'Copying bashrc file to home'
# If using with vagrant, user is "root" when running the script, so:
if [ $USER == "root" ]
    then 
        cp files/bashrc /home/vagrant/.bashrc
else
    cp files/bashrc ~/.bashrc
fi
echo 'Configuring Ubuntu theme'
# Paper Icons
sudo add-apt-repository -y -u ppa:snwh/ppa
sudo apt-get install paper-icon-theme -y
# Vimix theme
sudo rm -rf ~/vimix
git clone https://github.com/vinceliuice/vimix-gtk-themes.git ~/vimix
~/vimix/install.sh
sudo rm -rf ~/vimix
echo '*'
echo '* Ubuntu config setup script - DONE'
echo '*'
