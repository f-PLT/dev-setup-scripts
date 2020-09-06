#!/bin/sh
# bashrc config
echo '*'
echo '* Ubuntu config setup script - STARTING'
echo '*'
sudo apt install -y gnome-tweaks
echo 'Copying bashrc file to home'
cp files/bashrc ~/.bashrc
# vim config
echo 'Copying apprentice color to vim dir'
cp files/apprentice.vim /usr/share/vim/vim80/colors
echo 'Copying vimrc to home'
cp files/vimrc ~/.vimrc
echo 'Configuring Ubuntu theme'
# Paper Icons
sudo add-apt-repository -u ppa:snwh/ppa
sudo apt-get install paper-icon-theme -y
# Vimix theme
sudo rm -rf ~/vimix
git clone https://github.com/vinceliuice/vimix-gtk-themes.git ~/vimix
~/vimix/install.sh
sudo rm -rf ~/vimix
echo '*'
echo '* Ubuntu config setup script - DONE'
echo '*'