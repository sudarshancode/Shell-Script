#Fibonacci Series
#!/bin/bash

read -p "Enter the value of n:" n;

firstpoint=0
secondpoint=1

nextTerm=$(($firstpoint + $secondpoint))

echo "$firstpoint"
echo "$secondpoint"

for (( i=2 ; i<n ; i++ ))
do
	echo "$nextTerm"
	firstpoint=$secondpoint
	secondpoint=$nextTerm

	nextTerm=$(($firstpoint + $secondpoint))

done


	

