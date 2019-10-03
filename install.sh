#!/bin/bash

# Author: Francis Pelletier
# Date  : October 2019

# This script is part of this project : https://gitlab.com/f_PLT/dev-setup

# This script will configure everything. It is meant to be run
# on a newly installed system, or one meant to become a new 
# developement environment. Use at your own risks.

# It is recommended that you run this script from your home folder,
# or inside the folder where you want to have your Chef working folder

### Setting things in to place ###

# System update
sudo apt-get update
sudo apt-get upgrade

# Install base packages
sudo apt-get install git
sudo apt-get install curl

### Installing Chef and folder setup ###

# Download Chef workstation package. Check version before launching
curl -O https://packages.chef.io/files/stable/chef-workstation/0.8.7/ubuntu/18.04/chef-workstation_0.8.7-1_amd64.deb
sudo dpkg -i chef-workstation_0.8.7-1_amd64.deb

# Setup chef-home folder
mkdir -p ~/chef-home/.chef ~/chef-home/cookbooks

# Cleanup
rm -rf chef-workstation_0.8.7-1_amd64.deb

### Let's cook! ###

# Fetch repo
git@gitlab.com:f_PLT/dev-setup.git ~/chef-home/cookbooks/dev-setup

# Run cookbook
# Here, you can also run all the recipes, like say:
# (cd chef-home && sudo chef-client -z -o  dev-setup)
(cd chef-home && sudo chef-client -z -o  dev-setup::basictools)
