#!/usr/bin/env bash

echo '*'
echo '* Miniforge3 configuration script - STARTING'
echo '*'
echo
echo 'Checking if conda exists'
conda --version
if [ $? != "0" ]; then
    echo 'Checking if mamba exists'
    mamba --version
    if [ $? != "0" ]; then
        echo 'Fetching and installing miniconda'
            wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
            bash Miniforge3-$(uname)-$(uname -m).sh -b -p ~/.miniforge3
            ln -s ~/.miniforge3/condabin/conda ~/.local/bin/conda
            ln -s ~/.miniforge3/condabin/mamba ~/.local/bin/mamba
            /usr/bin/rm Miniforge3-$(uname)-$(uname -m).sh
            conda init

            echo "alias createEnv='conda create python=3.13 -n'" >> ~/.bashrc
            echo "alias createMambaEnv='mamba create python=3.13 -n'" >> ~/.bashrc
    else
        echo
        echo '- WARNING - mamba exists, consider checking if update is necessary'
        echo
    fi
else
    echo
    echo '- WARNING - conda exists, consider checking if update is necessary'
    echo
fi

echo '*'
echo '* Miniforge3 configuration script - DONE'
echo '*'