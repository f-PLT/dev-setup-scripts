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
python-dev \
virtualenv \
libpq-dev

echo 'Installing pipx'
pip install pipx
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

else
    echo 'miniconda exists, consider checking if update is necessary'
fi

echo 'Checking if micromamba exists'
micromamba --version
if [ $? != "0" ]; then
echo 'Installing Micromamba'
(cd ~/.local && wget -qO- https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj bin/micromamba)
.local/bin/micromamba shell init -s bash -p ~/.micromamba

echo "" >> ~/.bashrc
echo "# Conda aliases" >> ~/.bashrc
echo "alias mamba='micromamba'" >> ~/.bashrc
echo "alias createEnv='conda create python=3.13 -n'" >> ~/.bashrc
echo "alias createMambaEnv='mamba create python=3.13 -n'" >> ~/.bashrc
echo "" >> ~/.bashrc


fi

echo '*'
echo '* Python configuration script - DONE'
echo '*'