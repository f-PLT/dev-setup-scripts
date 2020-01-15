#!/bin/sh
# bashrc config
echo '*'
echo '* Bash and Vim setup script - STARTING'
echo '*'
echo 'Copying bashrc file to home'
cp files/bashrc ~/.bashrc
# vim config
echo 'Copying apprentice color to vim dir'
cp files/apprentice.vim /usr/share/vim/vim80/colors
echo 'Copying vimrc to home'
cp files/vimrc ~/.vimrc
echo '*'
echo '* Bash and Vim setup script - DONE'
echo '*'