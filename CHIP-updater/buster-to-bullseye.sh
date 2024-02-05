#!/bin/bash

# Upgrade from buster to bullseye
echo "."
echo "*** Updating and upgrading Debian Buster to Bullseye. ***"
mv /etc/apt/sources.list /etc/apt/sources.list.bak
wget https://raw.githubusercontent.com/jpenninkhof/Flash-CHIP/master/CHIP-updater/bullseye_source_list.txt
mv bullseye_source_list.txt /etc/apt/sources.list

echo "."
echo "*** apt update & upgrade ***"
apt update
apt full-upgrade -y --force-yes
sleep 5

apt autoremove -y --force-yes
echo "."
echo "*** Update to Bullseye finished. Reboot***"
