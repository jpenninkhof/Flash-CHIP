#!/bin/bash

# Upgrade from bullseye to bookworm
echo "."
echo "*** Updating and upgrading Debian Bullseye to Bookworm. ***"
mv /etc/apt/sources.list /etc/apt/sources.list.bak
wget https://raw.githubusercontent.com/mahtan/Flash-CHIP/master/CHIP-updater/bookworm_source_list.txt
mv bookworm_source_list.txt /etc/apt/sources.list

echo "."
echo "*** apt update & upgrade ***"
apt update
apt full-upgrade -y --force-yes
sleep 5

# Define X11 variables for bookworm
sudo mv /etc/X11/xorg.conf /etc/X11/xorg.conf.bak
wget https://raw.githubusercontent.com/mahtan/Flash-CHIP/master/CHIP-updater/buster_x11.txt
mv buster_x11.txt /etc/X11/xorg.conf

apt autoremove -y --force-yes
echo "."
echo "*** Update to Bookworm finished. Reboot***"
