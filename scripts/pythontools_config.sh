#!/bin/bash

echo '*'
echo '* Python configuration script - STARTING'
echo '*'
# Installing basic packages
echo 'Installing python packages'
echo
sudo apt-get install -y \
python3 \
python3-pip \
pylint3 \
idle3 \
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

echo 'Checking if miniconda exists'
conda --version
if [ $? != "0" ]; then
echo 'Fetching and installing miniconda'
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
    bash ~/miniconda.sh -b -p $HOME/.conda
    export PATH=$HOME/.conda/bin:$PATH
    conda init
    rm ~/miniconda.sh

echo 'Installing Micromamba'
(cd ~/.local && wget -qO- https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj bin/micromamba)
.local/bin/micromamba shell init -s bash -p ~/.micromamba
echo "alias mamba='micromamba'" >> ~/.bashrc

else
    echo 'miniconda exists, consider checking if update is necessary'
fi


echo '*'
echo '* Python configuration script - DONE'
echo '*'