#Cheack a number is armstrong number or not

#!/bin/bash

number=$1

orgin=$number;
result=0

while [ $orgin -ne  0 ]
do
	remainder=$(($orgin%10));

	result=$(($result + $remainder * $remainder * $remainder ))
	
	orgin=$(($orgin/10))
done

if [ $number == $result ]
then
	echo "The number is armstrong"
else
	echo "The number is not armstrong"
fi
	
