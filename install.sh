#!/bin/bash
# Author: Francis Pelletier
# Date  : January 2021

# This script is part of this project : https://gitlab.com/f_PLT/dev-setup

# This script will configure everything. It is meant to be run
# on a newly installed system, or one meant to become a new 
# developement environment.
#
# Tested with Ubuntu 18.04 and 20.04, as well a Vagrant
#
# Use at your own risks.

# basic tools scripts
basictools () {
    (cd ~/dev-setup/scripts && ./basictools.sh)
}

# bash configuration
bashconf () {
    (cd ~/dev-setup/scripts && ./bashconf.sh)
}

# ctools
c () {
    (cd ~/dev-setup/scripts && ./ctools.sh)
}

# dockertools
docker () {
    (cd ~/dev-setup/scripts && ./dockertools_config.sh)
}

ide () {
    echo 'Installing VS Code'
    sudo snap install code --classic
}

# javatools
java () {
    (cd ~/dev-setup/scripts && ./javatools_config.sh)
}

# pythontools
python () {
    (cd ~/dev-setup/scripts && ./pythontools_config.sh)
}

# Setting things in to place
setup () {
    # System update
    sudo apt-get update
    curl -V
    if [ $? != "0" ]
        then
            sudo apt-get install curl -y
    fi
    git --version
    if [ $? != "0" ]
        then
            sudo apt-get install git -y
    fi
    # Fetch repo
    if [ ! -d "$HOME/dev-setup" ]
        then
            git clone https://gitlab.com/f_PLT/dev-setup.git ~/dev-setup
    else
        (cd ~/dev-setup && git pull)
    fi
}

# ubuntuconfig
ubuntu () {
    (cd ~/dev-setup/scripts && ./ubuntuconfig.sh)
}

# vim configuration
vimconf () {
    (cd ~/dev-setup/scripts && ./vimconf.sh)
}

# webtools
web () { 
    (cd ~/dev-setup/scripts && ./webtools_config.sh)
}

# Preset installations
all () {
    setup
    bashconf
    basictools
    vimconf
    ubuntu
    python
    docker
    java
    c
    web
    ide
}

custom () {
    setup
    bashconf
    vimconf
    basictools
    ubuntu
    python
    docker
    web
    ide
}

list () {
    echo " List of available configurations:"
    echo
    echo "    - bashconf   : Set .bashrc file. This will overwrite your .bashrc file,"
    echo "                   Run this first, as python and other configurations"
    echo "                   will modify this file too"
    echo "    - basictools : Basic packages and vim configuration."
    echo "    - c          : C libraries"
    echo "    - docker     : Docker installation and configuration"
    echo "    - ide        : Install Vscode"
    echo "    - java       : Open JDK, maven, gradle"
    echo "    - python     : Python libraries"
    echo "    - setup      : Updates system, fetches repository."
    echo "                   Run this first if you downloaded install.sh file only"
    echo "    - ubuntu     : Ubuntu system configs and themes"
    echo "    - vimconf    : Set .vimrc file. This will overwrite your .vimrc file."
    echo "    - web        : NVM, Yarn and"
    echo
    echo " Preset installation packages:"
    echo
    echo "    - all        : Installs everything"
    echo "    - custom     : Installs custom selection:"
    echo "                   bacistools, bashconf, vimconf, docker, python, ubuntu, ide and web."
}

if [[ "$#" -eq 0 ]]; then
    list
fi

for var in "$@"
do
    # Order is set according to use, not alphabetical order
    case "$var" in
        "list")
            list
            ;;
        "custom")
            custom
            ;;
        "setup")
            setup
            ;;
        "bashconf")
            bashconf
            ;;
        "basictools")
            basictools
            ;;
        "vimconf")
            vimconf
            ;;
        "ide")
            ide
            ;;
        "ubuntu")
            ubuntu
            ;;
        "python")
            python
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
        *)
            echo "* * * * * * * * * * * * * * * * * * * * * * * * * "
            echo "* ""$var"" is not a valid input "
            echo "* Use the list command to see available inputs"
            echo "* * * * * * * * * * * * * * * * * * * * * * * * *"
            exit 1
    esac
done
