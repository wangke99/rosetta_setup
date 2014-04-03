#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y gcc make g++ vim emacs

mkdir ~/Downloads
cd ~/Downloads
wget -O node.tar.gz http://nodejs.org/dist/v0.10.26/node-v0.10.26.tar.gz
tar xvfz node.tar.gz
cd ~/Downloads/node-v0.10.26/
./configure
make
sudo make install
