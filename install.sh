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
sudo apt-get upgrade -y

# Install base packages
sudo apt-get install git -y
sudo apt-get install curl -y

# Fetch repo
git clone https://gitlab.com/f_PLT/dev-setup.git ~/dev-setup

# Basic tools scripts
(cd ~/dev-setup/scripts && sudo ./basictools.sh)

# Uncomment the following for ubuntuconfig
#(cd ~/dev-setup/scripts && sudo ./ubuntuconfig.sh)

# Uncomment the following for pythontools
#(cd ~/dev-setup/scripts && ./pythontools_config.sh)

# Uncomment the following for webtools
#(cd ~/dev-setup/scripts && ./webtools_config.sh)

# Uncomment the following for dockertools
#(cd ~/dev-setup/scripts && sudo ./dockertools_config.sh)

# Uncomment the following for javatools
#(cd ~/dev-setup/scripts && sudo ./javatools_config.sh)

# Uncomment the following for ctools
#(cd ~/dev-setup/scripts && sudo ./ctools.sh)