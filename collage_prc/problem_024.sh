#Write a shell script to check whether a number is duck
#number or not.A number is said to be duck if the digit 0 is present in it

#!/bin/bash

read -p "Enter a number" num;
flag=0;
while [ $num -gt 0 ]
do
	if [ $(($num%10)) -eq 0 ]
	then
		echo "Thee number is duck number";
		flag=1;
		break;
	fi
	
	num=$(($num/10));
	
done

if [ $flag -eq 0 ]
then
	echo "The number is not dark number";
fi
	
