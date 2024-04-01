#Write a shell script to find the sum of the digits of a multi-digit number

#!/bin/bash

read -p "Enter a multi-digit number:" num
sum=0;
while [ $num -gt 0 ]
do
	temp=$(($num%10));
	sum=$(($sum+$temp));

	num=$(($num/10));
done

echo "The sum of the digits are => $sum"
