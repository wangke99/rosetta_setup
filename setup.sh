#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y gcc emacs make python-dev g++ libffi-dev libxml2-dev libxslt-dev

mkdir ~/Downloads

cd ~/Downloads
wget http://cran.cnr.berkeley.edu/src/base/R-3/R-3.0.3.tar.gz
tar xvfz R-3.0.3.tar.gz
cd R-3.0.3
./configure --with-readline=no
make
sudo make install


cd ~/Downloads
curl -O https://pypi.python.org/packages/source/v/virtualenv/virtualenv-1.11.tar.gz
tar xvfz virtualenv-1.11.tar.gz
mv virtualenv-1.11 ~/virtualenv
cd ~/virtualenv
python virtualenv.py myVE

python virtualenv.py ~/python_env

~/python_env/bin/pip install requests
~/python_env/bin/pip install numpy
~/python_env/bin/pip install pandas
~/python_env/bin/pip install scrapy

