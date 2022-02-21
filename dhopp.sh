#!/bin/bash

check_snap () {
	if ! [ -e /usr/lib/snapd ] ; then
		echo "Installing Snap Repository"
		apt install snapd -y
	else
		echo "already installed"
	fi
}

check_distro(){
	if [ cat /etc/*-release | grep -F PRETTY_NAME ] ; then 	
		apt install dconf-editor
		gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
		gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
	fi
}

apt install wireshark -y 
apt install nmap -y
apt install ettercap-text-only -y
check_snap
snap install discord -y
apt install virtualbox -y
apt install software-properties-common -y
apt install python3.10 -y
apt install python3-pip -y
snap install --classic code -y
apt install net-tools -y
apt install neofetch -y
apt install retroarch -y

apt install dconf-editor
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

gsettings get org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/warty-final-ubuntu.png'

apt install fish


apt-get update
apt-get upgrade -y
apt autoremove -y


