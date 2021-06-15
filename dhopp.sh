#!/bin/bash

check_snap () {
	if ! [ -e /usr/lib/snapd ] ; then
		echo "Installing Snap Repository"
		apt install snapd -y
	else
		echo "already installed"
	fi
}

apt install wireshark -y 
apt install nmap -y
apt install ettercap-text-only -y
check_snap
snap install discord 
apt install virtualbox
apt install software-properties-common -y
add-apt-repository ppa:deadsnakes/ppa -y
apt install python3.8
apt install python3-pip
snap install --classic code
apt-get htop 
apt install net-tools


apt-get update
apt-get upgrade -y
apt autoremove -y


