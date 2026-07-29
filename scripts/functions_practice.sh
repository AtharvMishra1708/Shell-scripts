#!/bin/bash

install_packages(){
	sudo apt-get install $1
}

if [ $# -eq 0 ]
then
	echo "enter package name after $0"
	exit 1
else
	echo "Installing package $1"
	install_packages
fi
