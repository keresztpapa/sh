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
snap install discord -y
apt install virtualbox -y
apt install software-properties-common -y
add-apt-repository ppa:deadsnakes/ppa -y
apt install python3.10 -y
apt install python3-pip -y
snap install --classic code -y
snap install bashtop 
apt install net-tools -y
apt install neofetch -y
apt install retroarch -y

apt-get update
apt-get upgrade -y
apt autoremove -y


