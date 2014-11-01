#!/bin/bash

# Tools
install unzip rar unace sharutils arj lunzip lzip lzop bzip2 p7zip-full p7zip-rar
install zsh screen tmux xclip glipper pv macchanger mpv guake
install git subversion mercurial tig gitg gitk gource
install motion vagrant ansible
install dosbox dosemu
install links links2 lynx
install mplayer wireshark openvpn sublime-text pinta keepassx remmina virtualbox filezilla skype chromium-browser audacity sonic-visualiser bless blender

# Security
install foremost scalpel dff

# Python
install python-pip python-dev python-matplotlib python-yaml python-software-properties python-scapy python-numpy python-scipy ipython ipython-notebook python-pandas python-sympy python-nose
sudo pip install PIL --allow-external PIL --allow-unverified PIL
sudo pip install requests yara sympy gitdb pycipher grequests

# Dev
	install npm
	install ruby1.9.1-dev ruby-dev
	sudo gem install bundler
	install php5-cli php5-json php5-dev php5-curl
	# PHP: Install Composer
	curl -sS https://getcomposer.org/installer | php
	sudo mv composer.phar /usr/local/bin/composer
	# Databases
		install mysql-workbench
		# MongoDB
		wget http://robomongo.org/files/linux/robomongo-0.8.4-x86_64.deb
		sudo dpkg -i ./robomongo-0.8.4-x86_64.deb
		rm -f ./robomongo-0.8.4-x86_64.deb
		# DBeaver
		wget -c http://dbeaver.jkiss.org/files/dbeaver_2.4.3_amd64.deb
		sudo dpkg -i ./dbeaver_2.4.3_amd64.deb
		rm -f ./dbeaver_2.4.3_amd64.deb

# Other tools
install ack-grep		# ack-grep: http://beyondgrep.com
install irssi			# IRC Client
install newsbeuter		# RSS Reader
sudo pip install mps-youtube	# Youtube in Terminal

# TeamViewer
wget http://download.teamviewer.com/download/teamviewer_linux_x64.deb
sudo dpkg -i ./teamviewer_linux_x64.deb
rm -f ./teamviewer_linux_x64.deb

# HipChat
sudo sh -c 'echo "deb http://downloads.hipchat.com/linux/apt stable main" > /etc/apt/sources.list.d/atlassian-hipchat.list'
wget -O - https://www.hipchat.com/keys/hipchat-linux.key | sudo apt-key add -
sudo apt update
install hipchat

# SimpleScreenRecorder
sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder
sudo apt update
sudo apt install simplescreenrecorder
# if you want to record 32-bit OpenGL applications on a 64-bit system:
sudo apt install simplescreenrecorder-lib:i386

# w3af
mkdir ~/apps/
cd ~/apps/
git clone https://github.com/andresriancho/w3af.git
sudo pip install clamd==1.0.1 PyGithub==1.21.0 GitPython==0.3.2.RC1 pybloomfiltermmap==0.3.11 esmre==0.3.1 phply==0.9.1 nltk==2.0.4 chardet==2.1.1 pdfminer==20110515 futures==2.1.5 pyOpenSSL==0.13.1 lxml==2.3.2 scapy-real==2.2.0-dev guess-language==0.2 cluster==1.1.1b3 msgpack-python==0.2.4 python-ntlm==1.0.1 halberd==0.2.4 darts.util.lru==0.5 xdot==0.6
ln -s ~/apps/w3af/w3af_gui ~/apps/w3afgui

# ZAP Owasp
cd ~/apps/
wget http://downloads.sourceforge.net/project/zaproxy/2.3.1/ZAP_2.3.1_Linux.tar.gz
tar zxf ./ZAP_2.3.1_Linux.tar.gz
rm ZAP*.tar.gz
ln -s ~/apps/ZAP_2.3.1/zap.sh ~/apps/zap

# PenQ
# http://www.qburst.com/products/PenQ
wget http://penq.qburst.com/PenQ-installer-1.1.sh
chmod +x PenQ-installer-1.1.sh
./PenQ-installer-1.1.sh
rm PenQ-installer-1.1.sh
rm ~/Desktop/penq.desktop

# Motion for script that send email if someone is at computer
install motion
sudo mkdir -p ~/.motion/img
sudo mkdir -p /var/run/motion
sudo cp /etc/motion/motion.conf ~/.motion/motion.conf
# Configurations
file="/home/${iUSER}/.motion/motion.conf"
sudo sed -i "s/daemon off/daemon on/g" ${file}
sudo sed -i "s/width 320/width 2048/g" ${file}
sudo sed -i "s/width 240/height 1568/g" ${file}
sudo sed -i "s/gap 60/gap 10/g" ${file}
sudo sed -i "s/quality 75/quality 100/g" ${file}
sudo sed -i "s|target_dir /tmp/motion|target_dir /home/teo/.motion/img/|g" ${file}
sudo sed -i "s/webcam_port 8081/webcam_port 0/g" ${file}
