#!/usr/bin/env bash

# liblo (OSC) and oscsend (oscdump and oscsend)
sudo apt-get install liblo-dev
wget -O /tmp/oscsend.tar.gz http://fukuchi.org/works/oscsend/oscsend-1.0.0.tar.gz
cd /tmp
tar xzvf oscsend.tar.gz
./configure
make
sudo make install
