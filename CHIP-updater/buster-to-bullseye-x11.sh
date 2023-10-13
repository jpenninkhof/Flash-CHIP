#!/bin/bash

# Upgrade from buster to bullseye
echo "."
echo "*** Updating and upgrading Debian Buster to Bullseye. ***"
mv /etc/apt/sources.list /etc/apt/sources.list.bak
wget https://raw.githubusercontent.com/mahtan/Flash-CHIP/master/CHIP-updater/bullseye_source_list.txt
mv bullseye_source_list.txt /etc/apt/sources.list

echo "."
echo "*** apt update & upgrade ***"
apt update
apt full-upgrade -y --force-yes
sleep 5

# Define X11 variables for bullseye
sudo mv /etc/X11/xorg.conf /etc/X11/xorg.conf.bak
wget https://raw.githubusercontent.com/mahtan/Flash-CHIP/master/CHIP-updater/buster_x11.txt
mv buster_x11.txt /etc/X11/xorg.conf

apt autoremove -y --force-yes
echo "."
echo "*** Update to Bullseye finished. Reboot***"
