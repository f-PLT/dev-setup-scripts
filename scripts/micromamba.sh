#!/usr/bin/env bash

echo '*'
echo '* Micromamba configuration script - STARTING'
echo '*'
# Installing basic packages
echo 'Installing micromamba'
echo

echo 'Checking if micromamba exists'
mamba --version
if [ $? != "0" ]; then
echo 'Fetching and installing Micromamba'
    wget -qO- https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj bin/micromamba
    mv bin/micromamba ~/.local/bin/mamba
    rm -rf bin/
    ~/.local/bin/mamba shell init -s bash ~/.micromamba

    echo "" >> ~/.bashrc
    echo "# Conda aliases" >> ~/.bashrc
    echo "alias createMambaEnv='mamba create python=3.13 -n'" >> ~/.bashrc
    echo "" >> ~/.bashrc

else
    echo
    echo '- WARNING - mamba exists, consider checking if update is necessary'
    echo
fi

echo '*'
echo '* Micromamba configuration script - DONE'
echo '*'