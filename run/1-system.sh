#!/bin/bash

# Update & Upgrade
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y

# sysctl
sudo /bin/su -c "cat /home/${iUSER}/.teo/init/system/sysctl.conf >> /etc/sysctl.conf"
sudo sysctl -p

# Partition settings: tmp in RAM
sudo sed -ie "0,/errors=remount-ro/s//discard,noatime,nodiratime,errors=remount-ro/" /etc/fstab
sudo /bin/su -c "echo -e 'tmpfs /tmp tmpfs defaults,nosuid,noatime,mode=1777 0 0' >> /etc/fstab"

# Fix USB Mouse lag
# sudo sh -c 'echo N > /sys/module/drm_kms_helper/parameters/poll'
# sudo sh -c 'echo "options drm_kms_helper poll=N" > /etc/modprobe.d/local.conf'
# sudo sh -c 'echo "disable" > /sys/firmware/acpi/interrupts/gpe19'
# Set polling rate at 500Hz
#sudo sh -c 'echo "options usbhid mousepoll=2" > /etc/modprobe.d/modprobe.conf'

# Battery Life
    # sudo add-apt-repository -y ppa:linrunner/tlp
    # sudo apt update
    # install tlp tlp-rdw
    # sudo tlp start
# Battery Life and fix mouse lag 

# Libraries or System Tools
install lib32z1 libtool zlib1g zlib1g-dev libasound2-plugins:i386 ia32-libs-gtk libopenmpi-dev libxml2-dev libpcap-dev libxslt-dev
install bc gcc g++ patch openssl make cmake autoconf automake texinfo dconf-tools openmpi-bin
install curl strace ltrace gdb yasm nasm valgrind rdesktop ipcalc traceroute xdotool
install sshfs wget curl apache2-utils atop htop iotop nmap tcpdump nload bmon mc vim
install gufw gparted pdftk jpegoptim optipng exiftool imagemagick

# Install multimedia codecs
install ubuntu-restricted-extras
# To enable playback of encrypted dvds, install the following package.
sudo /usr/share/doc/libdvdread4/install-css.sh
# Install new fonts
install fonts-droid fonts-noto
# Flash
install pepperflashplugin-nonfree
sudo dpkg-reconfigure pepperflashplugin-nonfree
