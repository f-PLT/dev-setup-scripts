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
basictools () {
    (cd ~/dev-setup/scripts && sudo ./basictools.sh)
}

# ubuntuconfig
ubuntu () {
    (cd ~/dev-setup/scripts && sudo ./ubuntuconfig.sh)
}
# pythontools
py () {
    (cd ~/dev-setup/scripts && ./pythontools_config.sh)
}
# webtools
web () { 
    (cd ~/dev-setup/scripts && ./webtools_config.sh)
}
# dockertools
docker () {
    (cd ~/dev-setup/scripts && sudo ./dockertools_config.sh)
}
# javatools
java () {
    (cd ~/dev-setup/scripts && sudo ./javatools_config.sh)
}
# ctools
c () {
    (cd ~/dev-setup/scripts && sudo ./ctools.sh)
}
all () {
    basictools
    ubuntu
    py
    docker
    java
    c
    web
}
custom () {
    basictools
    ubuntu
    py
    docker
    web
}
list () {
    echo " List of available configurations:"
    echo
    echo "    - ubuntu : Ubuntu and basic system configs"
    echo "    - python : Python libraries and IDE"
    echo "    - web    : NVM, Yarn and Web IDE"
    echo "    - docker : Docker installation and configuration"
    echo "    - java   : Open JDK, maven, gradle and IDE"
    echo "    - c      : C libraries and IDE"
    echo "    - all    : Installs everything"
    echo "    - custom : Installs custom selection"
}

if [[ "$@" -eq 0 ]]; then
    list
fi

for var in "$@"
do
    case "$var" in
        "basictools")
            basictools
            ;;
        "ubuntu")
            ubuntu
            ;;
        "python")
            py
            ;;
        "web")
            web
            ;;
        "docker")
            docker
            ;;
        "java")
            java
            ;;
        "c")
            c
            ;;
        "all")
            all
            ;;
        "custom")
            custom
            ;;
        "list")
            list
            ;;
        *)
            echo "* * * * * * * * * * * * * * * * * * * * * * * * * "
            echo "* ""$var"" is not a valid input "
            echo "* Use the list command to see available inputs"
            echo "* * * * * * * * * * * * * * * * * * * * * * * * *"
            exit 1
    esac
done
