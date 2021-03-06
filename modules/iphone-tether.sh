#!/bin/bash

sudo apt-get install libimobiledevice-dev

cd /tmp
git clone https://github.com/dgiagio/ipheth.git

cd ipheth
echo "INSTALLING PAIR"
cd ipheth-pair
make
sudo cp ipheth-pair /usr/bin
sudo make install

if [ "`grep 'LinuxMint' /etc/*-release`" == "" ]; then
	echo "INSTALLING DRIVER"
	cd ../ipheth-driver
	make
	sudo insmod ipheth.ko
	sudo make install
	#sudo cp ipheth-modprobe.conf /etc/modprobe.d/
	sudo depmod
else
	sudo apt-get install ipheth-utils
fi
