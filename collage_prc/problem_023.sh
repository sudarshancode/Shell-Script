#Write a Shell Script to input a multi-digit number and print 
# whether the number is a special number or not

#!/bin/bash

read -p "Enter a number:" num;

orginal_number=$num;
sum=0;
while [ $num -gt 0 ]
do
	temp=$(($num%10));
	factorial=1;

	for ((i=1 ; i <= $temp ; i++ ))
	do
		factorial=$(($factorial*$i));
		
	done
	sum=$(($sum+$factorial));
	
	num=$(($num/10));
done
	echo $sum;

if [ $orginal_number -eq $sum ]
then
	echo "The number is special number";
else
	echo "the number is not special number";
fi

		
