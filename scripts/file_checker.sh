#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Enter valid file name"
	exit 1
	echo "failed"
else
	if [ -f $1 ]; then
		echo "File exists"
	else
		echo " File doesn't exists"
	fi
fi
