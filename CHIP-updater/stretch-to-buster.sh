#!/bin/bash

# Upgrade from stretch to buster
echo "."
echo "*** Updating and upgrading Debian Stretch to Buster. ***"
mv /etc/apt/sources.list /etc/apt/sources.list.bak
wget https://raw.githubusercontent.com/jpenninkhof/Flash-CHIP/master/CHIP-updater/buster_source_list.txt
mv buster_source_list.txt /etc/apt/sources.list

echo "."
echo "*** apt update & upgrade ***"
apt update
#apt install linux-image-armmp -y --force-yes
apt full-upgrade -y --force-yes
sleep 5

apt autoremove -y --force-yes
echo "."
echo "*** Update to Buster finished. Reboot***"
