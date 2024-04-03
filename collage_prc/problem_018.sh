#Write a shell script to check a number is buzz number or not ?

#!/bin/bash

read -p "Enter any number:" num;

if [ $(($num%7)) -eq 0 ] || [ $(($num%10)) -eq 7 ]
then
	echo "The number is buzz number";
else
	echo "The number is not buzz number";
fi


