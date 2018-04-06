#!/bin/bash

function program_is_installed {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  type $1 >/dev/null 2>&1 || { local return_=0; }
  # return value
  echo "$return_"
}

if [[ $(program_is_installed conda) -eq 0 ]]; then
    echo 'installing conda...'
    wget -c https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda_installer.sh
    chmod +x Miniconda_installer.sh
    ./Miniconda_installer.sh
    rm ./Miniconda_installer.sh

    echo 'updating conda...'
    conda update -n base conda
    conda update conda
    conda update conda-build
else
    echo 'conda is already installed'
fi
