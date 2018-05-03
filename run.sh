#!/bin/bash
# Copyright 2018 Tero Karvinen http://TeroKarvinen.com GPL 3

echo "Sima Live USB configuration Starting... miyune/sima"
set -o verbose

echo "Installing Salt and Git..."
sudo apt-get update
sudo apt-get -y install git salt-minion

echo "Retrieving and Applying Settings..."
echo 'master: localhost'|sudo tee /etc/salt/minion
git clone https://github.com/miyune/sima
cd sima/
./highstate.sh

echo "Configuring Live Desktop"
setxkbmap fi
sudo timedatectl set-timezone Europe/Helsinki
git config --global credential.helper "cache --timeout=3600"
git config --global push.default simple
# git config --global user.email "terosstudent@example.com"
# git config --global user.name "Tero's Student"

echo "More tips on http://terokarvinen.com/tag/saltstack and www.liinuksi.wordpress.com"
echo "Done."
