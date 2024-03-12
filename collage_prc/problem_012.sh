#Sort Array

#!/bin/bash

length=$1

declare -a arr

for (( i=0 ; i<$length ; i++ ))
do
	read -p "Enter value of  $(($i+1)) position:" num

	arr[$i]=$num;
done

sorted=($(for number in "${arr[@]}"; do echo "$number"; done | sort -n))

echo "Sorted array: ${sorted[@]}"
