#!/usr/bin/env bash

echo '*'
echo '* Python configuration script - STARTING'
echo '*'
# Installing basic packages
echo 'Installing python packages'
echo
sudo apt-get install -y \
python3 \
python3-pip \
idle3 \
virtualenv \
python3-venv \
libpq-dev

echo 'Installing pipx'
virtualenv $HOME/.venv
source $HOME/.venv/bin/activate
pip3 install pipx
pipx ensurepath

echo 'Installing poetry'
pipx install poetry

echo 'Installing astral.sh/uv'
pipx install uv

echo 'Checking if miniconda exists'
conda --version
if [ $? != "0" ]; then
echo 'Fetching and installing miniconda'
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
    bash ~/miniconda.sh -b -p $HOME/.conda
    export PATH=$HOME/.conda/bin:$PATH
    conda init
    rm ~/miniconda.sh

    echo "" >> ~/.bashrc
    echo "# Conda aliases" >> ~/.bashrc
    echo "alias createEnv='conda create python=3.13 -n'" >> ~/.bashrc
    echo "alias createMambaEnv='mamba create python=3.13 -n'" >> ~/.bashrc
    echo "" >> ~/.bashrc

    # Set default channels for conda
    if [ -e ~/.condarc ]; then
        cp ~/.condarc ~/.condarc_old
    fi
    cp files/condarc ~/.condarc
    echo "Your .condarc file has been created/overwritten and previous file was saved to ~/.condarc_old."
    echo "Content of ~/.condarc:"
    cat ~/.condarc

else
    echo 'miniconda exists, consider checking if update is necessary'

fi

echo '*'
echo '* Python configuration script - DONE'
echo '*'
