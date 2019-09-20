#!/bin/bash
#
# Download Chef workstation package. Check version before launching
curl -O https://packages.chef.io/files/stable/chef-workstation/0.8.7/ubuntu/18.04/chef-workstation_0.8.7-1_amd64.deb
sudo dpkg -i chef-workstation_0.8.7-1_amd64.deb

# Setup chef-home folder
mkdir -p ~/chef-home/.chef ~/chef-home/cookbooks

# Cleanup
rm -rf chef-workstation_0.8.7-1_amd64.deb 