#!/bin/bash

# nVidia (select last driver from device drivers)
# Add nVidia Repository
    sudo add-apt-repository -y ppa:bumblebee/stable
    sudo apt update
    install nvidia-prime virtualgl bumblebee bumblebee-nvidia nvidia-331
# nVidia Configuration
    sudo sed -ie "0,/Driver=/s//Driver=nvidia/" /etc/bumblebee/bumblebee.conf
    sudo sed -ie "0,/KernelDriver=nvidia-current/s//KernelDriver=nvidia/" /etc/bumblebee/bumblebee.conf
