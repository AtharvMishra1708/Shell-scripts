#!/bin/bash

<<usage
This script is used to display 
-RAM usage
-Disk usage
-CPU usage
usage


check_RAM(){
	free -h | awk 'NR==2 {print $7}'

}

check_Disk(){
	df -h | awk 'NR==2 {print $4}'
}

check_CPU(){
	ps aux --sort=-%mem | awk 'NR==2 {print $1,$2,$4}'

}

display_usage(){
	echo "==========SYSTEM USAGE=========="
	echo "RAM usage"
	check_RAM
	echo "Disk usage"
	check_Disk
	echo "CPU usage"
	check_CPU
}

display_usage

