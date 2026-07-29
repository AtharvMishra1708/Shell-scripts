#!/bin/bash

<<comment
Printing even numbers
first script
comment

for ((i=0 ; i<=10 ; i++))
do
	if (($i % 2 == 0)); then
		echo "$i is even number"
	else
		echo "$i is odd number"
	fi
done


