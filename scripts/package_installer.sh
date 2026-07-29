#!/bin/bash


read -p "Enter package name you want to install :" package_name
if dpkg -s "$package_name" > /dev/null 2>&1 ; then
	echo "$package_name is installed"
	exit 1

else
	echo "$package_name is not installed"
fi

echo "Updating apt and installing $package_name"

sudo apt update
sudo apt install $package_name -y

