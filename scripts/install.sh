#!/bin/bash
#
# Download Chef workstation package. Check version before launching
curl -O https://packages.chef.io/files/stable/chef-workstation/0.8.7/ubuntu/18.04/chef-workstation_0.8.7-1_amd64.deb
sudo dpkg -i chef-workstation_0.8.7-1_amd64.deb

# Setup chef-home folder
mkdir -p ~/chef-home/.chef ~/chef-home/cookbooks

# Run cookbook
cd ~/chef-home
sudo chef-client -z -o dev-setup

# Test installation
#sudo chef-client --local-mode 'recipe[test-dev-home]'
cd ~

# Cleanup
rm -rf chef-workstation_0.8.7-1_amd64.deb 
