#!/bin/bash

<<usage
This script is used to add users and passwords
usage

useradding() {
read -p "Enter username to add: " username
read -p "Enter password for username: " password

if id $username &>/dev/null
then
	echo "User already exists"
	exit 1
else
	echo "Adding user.."
	sudo useradd -m $username -p $password
	echo "$username added"
fi
}

