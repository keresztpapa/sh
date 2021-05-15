#!/bin/bash

check_snap () {
	if ! [ -e /usr/lib/snapd ] ; then
		echo "Installing Snap Repository"
		apt install snapd -y
	else
		echo "already installed"
	fi
}

sudo apt install wireshark -y 
sudo apt install nmap -y
sudo apt install ettercap-text-only -y
sudo check_snap
sudo snap install discord 
sudo apt install virtualbox
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.8
sudo apt install python3-pip
sudo snap install --classic code
sudo apt-get htop 


sudo apt install software-properties-common apt-transport-https wget
wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" -y
sudo apt install atom -y

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y


