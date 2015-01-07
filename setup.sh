#!/bin/bash

# Linux Mint 17

# Todo:
# auto yes la fonts
# auto yes la dist-upgrade
# power. inactive

# Variables
export iUSER="teo"
export iNAME="Teofil Cojocariu"
export iEMAIL="teo@cojo.eu"

# Simplify process of install
install() {
    sudo apt install -y --with-install-recommends $@
}
export -f install

# sudo without password for user
suser="${iUSER}\tALL=(ALL:ALL) NOPASSWD:ALL"
sudo sed -ie "s/sudo\tALL=(ALL:ALL) ALL/sudo\tALL=(ALL:ALL) ALL\n${suser}/g" /etc/sudoers

./run/1-system.sh	# System
./run/2-nvidia.sh	# nVidia
./run/3-tools.sh	# Tools
./run/4-user.sh		# User
./run/5-fixes.sh 	# fixes
