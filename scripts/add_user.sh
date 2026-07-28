#!/bin/bash

read -p "How many users to add" user_count
for ((i=1 ; i<=$user_count ; i++))
do
	read -p "Enter username to add" user_name
	sudo useradd $user_name
	echo "$user_name is added"
done



