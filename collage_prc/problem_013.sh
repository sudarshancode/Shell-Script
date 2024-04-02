#Write a shell script to create an array using user input and perform
#scalar multiplication on the array elements

#!/bin/bash

read -p "Enter an array:" -a arr;

length=${#arr[@]}

read -p "Enter multipliear:" mul;

for (( i=0 ; i < $length ; i++ ))
do
	value=$(( ${arr[$i]} * $mul ));

	arr[$i]=$value;

done

echo "New array: ${arr[@]}"
