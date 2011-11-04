#!/usr/bin/env bash

apt-get install git
apt-get install subversion

apt-get install zsh

apt-get install vim-gnome

# liblo (OSC) and oscsend (oscdump and oscsend)
apt-get install liblo-dev
wget -O /tmp/oscsend.tar.gz http://fukuchi.org/works/oscsend/oscsend-1.0.0.tar.gz
cd /tmp
tar xzvf oscsend.tar.gz
cd oscsend-1.0.0
./configure
make
sudo make install
