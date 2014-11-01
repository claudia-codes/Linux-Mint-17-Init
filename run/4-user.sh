#!/bin/bash

# Enable Firewall
sudo ufw enable

# zsh and oh-my-zsh
curl -L http://install.ohmyz.sh | sh
sudo chsh -s /bin/zsh ${iUSER}

# Shell Configuration for bash and zsh
echo -e "source ~/.teosys/sh/loader.sh      # Load custom configuration" >> ~/.zshrc
echo -e "source ~/.teosys/sh/loader.sh      # Load custom configuration" >> ~/.bashrc

# Git Configuration
git config --global user.email "${iEMAIL}"
git config --global user.name "${iNAME}"
git config --global push.default current

# Sublime
mkdir -p ~/.config/sublime-text-3/Packages
ln -s ~/Documents/home/sublime/ ~/.config/sublime-text-3/Packages/User

# Firefox: Always ask for all plugins
sed -i 's/alwaysAsk="false"/alwaysAsk="true"/g' /home/teo/.mozilla/firefox/*.default/mimeTypes.rdf

# Create folder structure
mkdir -p ~/Downloads/{firefox,skype}
sudo mkdir -p /srv/torrent/{complete,incomplete}
sudo chown $iUSER:$iUSER /srv/torrent/ -R
ln -s /srv/torrent/ ~/Downloads/torrent

# Panel at Top
gsettings set org.cinnamon desktop-layout "flipped"

# Active Applets
gsettings set org.cinnamon enabled-applets "['panel1:left:0:menu@cinnamon.org:0', 'panel1:left:2:panel-launchers@cinnamon.org:2', 'panel1:left:3:window-list@cinnamon.org:3', 'panel1:right:0:notifications@cinnamon.org:4', 'panel1:right:1:user@cinnamon.org:5', 'panel1:right:2:removable-drives@cinnamon.org:6', 'panel1:right:3:keyboard@cinnamon.org:7', 'panel1:right:5:network@cinnamon.org:9', 'panel1:right:6:sound@cinnamon.org:10', 'panel1:right:7:power@cinnamon.org:11', 'panel1:right:8:systray@cinnamon.org:12', 'panel1:right:9:calendar@cinnamon.org:13', 'panel1:right:10:windows-quick-list@cinnamon.org:14', 'panel1:right:0:recent@cinnamon.org:15', 'panel1:right:0:workspace-switcher@cinnamon.org:17']"

# Nemo
gsettings set org.cinnamon.desktop.media-handling automount-open false
gsettings set org.cinnamon.desktop.media-handling autorun-never true
# Nemo: View
gsettings set org.nemo.preferences default-folder-viewer "list-view"

# Fonts
gsettings set org.cinnamon.desktop.interface font-name "Droid Sans 10"
gsettings set org.gnome.desktop.interface document-font-name "Droid Sans Mono 10"

# Corner
gsettings set org.cinnamon overview-corner "['expo:true:false', 'scale:false:false', 'scale:false:false', 'desktop:false:false']"

# Mouse and Touchpad
gsettings set org.cinnamon.settings-daemon.peripherals.touchpad disable-while-typing true
gsettings set org.cinnamon.settings-daemon.peripherals.touchpad horiz-scroll-enabled true
gsettings set org.cinnamon.settings-daemon.peripherals.touchpad scroll-method "two-finger-scrolling"

# Deactivate sound effects
gsettings set org.cinnamon.sounds login-enabled false
gsettings set org.cinnamon.sounds logout-enabled false
gsettings set org.cinnamon.sounds plug-enabled false
gsettings set org.cinnamon.sounds switch-enabled false
gsettings set org.cinnamon.sounds tile-enabled false
gsettings set org.cinnamon.sounds unplug-enabled false

# Don't suspend on close lid
gsettings set org.cinnamon.settings-daemon.plugins.power lid-close-ac-action "nothing"
gsettings set org.cinnamon.settings-daemon.plugins.power lid-close-battery-action "nothing"

# Add Romanian and Alt+Shift for change language
gsettings set org.gnome.libgnomekbd.keyboard layouts "['us', 'ro\tstd']"
gsettings set org.gnome.libgnomekbd.keyboard options "['grp\tgrp:alt_shift_toggle']"

# Panel
gsettings set org.cinnamon panel-launchers "['nemo.desktop', 'thunderbird.desktop', 'firefox.desktop', 'skype.desktop', 'keepassx.desktop', 'teamviewer-teamviewer9.desktop', 'virtualbox.desktop', 'sublime_text.desktop']"

# Theme Options
gsettings set org.cinnamon.desktop.wm.preferences theme 'Mint-X'
gsettings set org.cinnamon.desktop.interface cursor-theme 'DMZ-Black'
gsettings set org.cinnamon.desktop.interface gtk-theme 'Mint-X'
gsettings set org.cinnamon.desktop.interface icon-theme 'Mint-X-Dark'
gsettings set org.cinnamon.theme name 'Linux Mint'
gsettings set org.cinnamon.settings-daemon.plugins.xsettings buttons-have-icons true
gsettings set org.cinnamon.settings-daemon.plugins.xsettings menus-have-icons true
