#!/bin/bash

# Author: Francis Pelletier
# Date  : October 2019

# This script is part of this project : https://gitlab.com/f_PLT/dev-setup

# It is recommended that you run this script from your home folder,
# or inside the folder where you want to have your Chef working folder

# Download Chef workstation package. Check version before launching
curl -O https://packages.chef.io/files/stable/chef-workstation/0.8.7/ubuntu/18.04/chef-workstation_0.8.7-1_amd64.deb
sudo dpkg -i chef-workstation_0.8.7-1_amd64.deb

# Setup chef-home folder
mkdir -p ~/chef-home/.chef ~/chef-home/cookbooks

# Cleanup
rm -rf chef-workstation_0.8.7-1_amd64.deb 