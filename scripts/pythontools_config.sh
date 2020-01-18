#!/bin/sh

# Installing basic packages
echo 'Installing basic pip packages'
pip3 install virtualenv
pip3 install flask
pip3 install pytest
pip3 install psycopg2
pip3 install --upgrade autopep8

echo 'Checking if miniconda3 exists'
if [ ! -d "$HOME/miniconda3" ]; then
echo 'Fetching and installing miniconda3'
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
    bash ~/miniconda.sh -b -p
    rm ~/miniconda.sh
else
    echo 'miniconda3 exists, consider checking if update is necessary'
fi

