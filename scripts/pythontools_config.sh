#!/bin/sh

echo '*'
echo '* Python configuration script - STARTING'
echo '*'
# Installing basic packages
echo 'Installing python packages'
echo
sudo apt install -y \
python3 \
python3-pip \
pylint3 \
idle3 \
virtualenv \
python-dev \
libpq-dev

echo 'Installing basic pip packages'
pip3 install \
virtualenv \
flask \
pytest \
flake8 \
pylint \
--upgrade autopep8

echo 'Checking if miniconda3 exists'
if [ ! -d "$HOME/miniconda3" ]; then
echo 'Fetching and installing miniconda3'
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
    bash ~/miniconda.sh -b -p
    rm ~/miniconda.sh
else
    echo 'miniconda3 exists, consider checking if update is necessary'
fi

echo '*'
echo '* Python configuration script - DONE'
echo '*'