#!/bin/sh

# This command will update & upgrade your system
sudo apt update && sudo apt upgrade && sudo apt-get upgrade --fix-missing

# Install the package build-essential for making the package and checkinstall for putting it into your package manager
sudo apt -y install build-essential checkinstall

# Minimze on dock 
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

# Install Ubuntu Restricted Extras
sudo apt -y install ubuntu-restricted-extras

# install Gnome-tweak tool
sudo apt-get install gnome-tweak-tool -y
sudo apt-get install ubuntu-restricted-addons -y

#Install Gdebi & Wget packages
sudo apt install gdebi-core wget

# Install kazam
sudo apt -y install kazam winbind 

#Download and Install Google Chrome browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb

#INstall Media Player VLC
sudo apt -y install vlc

# Install latest Git & Git Configure
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt -y install git
sudo git config --global user.name "Nikodimos Enyew"
sudo git config --global user.email nikodimosenyew@gmail.com

# Check available upgrade & upgrade ubuntu 
sudo apt list --upgradable
sudo apt upgrade -y

#Check You Ubuntu 20.04 with NeoFatch
sudo apt install neofetch
neofetch

#Other Programming related Installations
sudo apt-get install build-essential ipython ruby monodevelop

#display switcher applet pre-requisite
sudo add-apt-repository ppa:disper-dev/ppa
sudo apt-get install disper

#install my bests

apt-get install openjdk-11-jdk playonlinux filezilla htop cmatrix libdvd-pkg

#Installing Node
sudo apt-get install curl -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

# install Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text


# Force any missing install, autoremove unused package, autoclean, clean update & reboot system
sudo apt -f install 
sudo apt autoremove 
sudo apt -y autoclean 
sudo apt -y clean 
sudo apt update
sudo reboot