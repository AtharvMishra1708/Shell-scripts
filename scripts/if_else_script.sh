#!/bin/bash

read -p "Enter the package name" package_name
if [ dpkg -s $package_name > /dev/null 2>&1 ]; then
	echo "$package_name is installed"
	exit 1
else
	echo "$package_name is not installed"

read -p "Enter the File name" file

if [ -f $file ]; then
	echo "File exists"
else
	"File doesn't Exists"
fi

read -p "Enter the directory name" dir

if [ -d $dir ]; then
	echo "Directory Exists"
else
	echo "Directory doesn't exists"
fi



