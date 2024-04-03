#Write a shell script to find whether a pair of integers are twin prime

#!/bin/bash

num1=$1
num2=$2

isPrime()
{
	num=$1;

	for ((i=2; i < $((num-1)); i++ ))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
			return 1;
		fi
	done
	return 0;
}

isTwinprime()
{
	num1=$1;
	num2=$2;
	if isPrime "$num1"
	then
		echo "$num1 is Prime"
	else
		echo "$num1 is not Prime"
	fi

	if isPrime "$num2"
	then
		echo "$num2 is prime"
	else
		echo "$num2 is not prime"
	fi
	if isPrime "$num1" && isPrime "$num2" && [ $(($num2-$num1 )) -eq 2 ]
	then
		echo "Pair of integers are twin Prime"
	else
		echo "Pair of intergers are not twin Prime"
	fi
}
isTwinprime "$num1" "$num2"
