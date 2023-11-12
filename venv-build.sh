#!/usr/bin/env bash

# A simple script to set up a venv for Python 3.12 using the same requirements.txt as the app
# Makes it easier to work with Visual Studio Code, for example, but is optional for the quickstart and can be deleted if not needed

# Install Python 3.12
sudo apt-add-repository ppa:deadsnakes/ppa && sudo apt-get update && sudo apt-get install -y python3.12 python3.12-venv

# Set working dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

mkdir "$DIR"/.venv

# Create venv
/usr/bin/env python3.12 -m venv "$DIR"/.venv

# Done
echo "Python3.12 venv created, activate with: source $DIR/.venv/bin/activate or add alias activate=\"source .venv/bin/activate\" to ~/.bash_aliases"