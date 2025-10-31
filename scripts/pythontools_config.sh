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

echo '*'
echo '* Python configuration script - DONE'
echo '*'