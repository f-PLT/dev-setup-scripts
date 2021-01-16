#!/bin/bash

# Author: Francis Pelletier
# Date  : September 2020

# This script is part of this project : https://gitlab.com/f_PLT/dev-setup

# This script will configure everything. It is meant to be run
# on a newly installed system, or one meant to become a new 
# developement environment. Use at your own risks.

# Basic tools scripts
basictools () {
    (cd ~/dev-setup/scripts && sudo ./basictools.sh)
}

# ctools
c () {
    (cd ~/dev-setup/scripts && sudo ./ctools.sh)
}

# dockertools
docker () {
    (cd ~/dev-setup/scripts && sudo ./dockertools_config.sh)
}

# javatools
java () {
    (cd ~/dev-setup/scripts && sudo ./javatools_config.sh)
}

# pythontools
python () {
    (cd ~/dev-setup/scripts && ./pythontools_config.sh)
}

# Setting things in to place
setup () {
    # System update
    sudo apt-get update
    sudo apt-get upgrade -y
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
    (cd ~/dev-setup/scripts && sudo ./ubuntuconfig.sh)
}

# webtools
web () { 
    (cd ~/dev-setup/scripts && ./webtools_config.sh)
}

# Preset installations
all () {
    setup
    basictools
    ubuntu
    python
    docker
    java
    c
    web
}

custom () {
    setup
    basictools
    ubuntu
    python
    docker
    web
}

list () {
    echo " List of available configurations:"
    echo
    echo "    - basictools : Basic packages and VS code"
    echo "    - c          : C libraries and IDE"
    echo "    - docker     : Docker installation and configuration"
    echo "    - java       : Open JDK, maven, gradle and IDE"
    echo "    - python     : Python libraries and IDE"
    echo "    - setup      : Updates system, fetches repository."
    echo "                   Run this first if you downloaded install.sh file only"
    echo "    - ubuntu     : Ubuntu system configs and themes"
    echo "    - web        : NVM, Yarn and Web IDE"
    echo
    echo " Preset installation packages:"
    echo
    echo "    - all        : Installs everything"
    echo "    - custom     : Installs custom selection:"
    echo "                   bacistools, docker, python, ubuntu and web."
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
        "basictools")
            basictools
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
