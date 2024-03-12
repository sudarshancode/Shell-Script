# Write a shell script to count number of digits of a multi-digit number taken as command line input

#!/bin/bash

num=$1;

count=0;


while [ ! $((num/10)) -eq 0 ]
do
	num=$((num/10));
	((count++));
done
count=$((count+1));
echo "The number of digits are $count"
