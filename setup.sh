#!/bin/bash

mkdir ~/Downloads
cd ~/Downloads
curl -O https://pypi.python.org/packages/source/v/virtualenv/virtualenv-1.11.tar.gz
tar xvfz virtualenv-1.11.tar.gz
mv virtualenv-1.11 ~/virtualenv
cd ~/virtualenv
python virtualenv.py myVE

python virtualenv.py ~/python_env

source ~/python_env/bin/activate
pip install requests
