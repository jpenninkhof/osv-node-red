#!/bin/sh -e

sudo apt-get install -y npm nodejs-legacy
sudo npm install -g grunt-cli
sudo rm -rf ROOTFS
mkdir ROOTFS
cd ROOTFS
git clone https://github.com/node-red/node-red.git
cd node-red
sudo npm install
grunt build
cd ../..
sudo patch -p0 < node-red.patch

