#!/bin/bash
# bashrc config
echo '*'
echo '* Ubuntu config setup script - STARTING'
echo '*'
sudo apt-get install -y gnome-tweaks

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
