#!/usr/bin/env bash
# Author: Francis Pelletier
# Date  : January 2021

# This script is part of this project : https://github.com/f-PLT/dev-setup-scripts

# This script will configure everything. It is meant to be run
# on a newly installed system, or one meant to become a new 
# developement environment.
#
# Tested with Ubuntu 24.04, as well a Vagrant
#
# Use at your own risks.


if [ -d scripts ]; then
    BASE_DEVSETUP_PATH=$(dirname "$(realpath $0)")
else
    BASE_DEVSETUP_PATH=$HOME/.dev-setup
fi

SCRIPT_FOLDER_PATH=$BASE_DEVSETUP_PATH/scripts

add_local_bin_to_path() {
    local target_dir="$HOME/.local/bin"

    # Check if the directory exists and is not already in PATH
    if [ -d "$target_dir" ] && [[ ":$PATH:" != *":$target_dir:"* ]]; then
        export PATH="$target_dir:$PATH"
        echo "Added $target_dir to PATH."
    else
        echo "$target_dir is already in PATH or does not exist."
    fi
}

# basic tools scripts
basictools () {
    (cd $SCRIPT_FOLDER_PATH && ./basictools.sh)
}

# bash configuration
bashconf () {
    (cd $SCRIPT_FOLDER_PATH && ./bashconf.sh)
}

# ctools
c () {
    (cd $SCRIPT_FOLDER_PATH && ./ctools.sh)
}

# dockertools
docker () {
    (cd $SCRIPT_FOLDER_PATH && ./dockertools_config.sh)
}

ide () {
    echo 'Installing VS Code'
    sudo snap install code --classic
}

# javatools
java () {
    (cd $SCRIPT_FOLDER_PATH && ./javatools_config.sh)
}

# pythontools
python () {
    add_local_bin_to_path
    (cd $SCRIPT_FOLDER_PATH && ./pythontools_config.sh)
}

# Setting things in to place
setup () {
    add_local_bin_to_path
    # System update
    sudo apt-get update
    curl -V
    if [ $? != "0" ]; then
        sudo apt-get install curl -y
    fi
    git --version
    if [ $? != "0" ]; then
        sudo apt-get install git -y
    fi
    # Fetch repo
    if [ ! -d $SCRIPT_FOLDER_PATH ]; then
        git clone https://github.com/f-PLT/dev-setup-scripts.git $BASE_DEVSETUP_PATH
    else
        (cd $BASE_DEVSETUP_PATH && git pull)
    fi
}

# vim configuration
vimconf () {
    (cd $SCRIPT_FOLDER_PATH && ./vimconf.sh)
}

# webtools
web () { 
    (cd $SCRIPT_FOLDER_PATH && ./webtools_config.sh)
}

# Preset installations
all () {
    setup
    bashconf
    basictools
    vimconf
    python
    docker
    java
    c
    web
    ide
}

desktop () {
    setup
    bashconf
    vimconf
    basictools
    python
    docker
    web
    ide
}

headless () {
    setup
    bashconf
    vimconf
    basictools
    python
    docker
    web
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
    echo "    - vimconf    : Set .vimrc file. This will overwrite your .vimrc file."
    echo "    - web        : NVM, Yarn and"
    echo
    echo " Preset installation packages:"
    echo
    echo "    - all        : Installs everything"
    echo "    - desktop    : Installs desktop selection:"
    echo "                   basictools, bashconf, vimconf, docker, python, ide and web."
    echo "    - headless   : Installs headless selection:"
    echo "                   basictools, bashconf, vimconf, docker, python, and web."
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
        "headless")
            headless
            ;;
        "desktop")
            desktop
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
