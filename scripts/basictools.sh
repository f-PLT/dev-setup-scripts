#!/usr/bin/env bash
echo '*'
echo '* Basictools configuration script - STARTING'
echo '*'
echo 'Installing packages'
sudo apt-get install -y \
build-essential \
software-properties-common \
vim \
bash-completion

echo 'Setting System file watcher'
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

echo '*'
echo '* Basictools configuration script - DONE'
echo '*'
