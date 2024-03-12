#Write a shell cript to check whether a number is prime number or not
#The number should be given as an input through command line argument

#!/bin/bash

num=$1;

isPrime()
{
	for ((i=2; i<$((num-1));i++ ))
	do  
    	if [ $((num%i)) -eq 0 ]
      		then
          		echo "The number is not prime"
          		
				return 1;
      	fi
  	done
	echo "The number is prime"
	return 0;

}
isPrime "$num"
