#Write a shell script to find the GCD of two integers taken as commandline arguments

#!/bin/bash

Gcd(){
	num1=$1;
	num2=$2;

	while [ $num2 -ne 0 ]
	do
		local temp=$num2;
		num2=$(($num1%$num2));
		num1=$temp;
	done;
	echo $num1;
}

main(){
	num1=$1;
	num2=$2;

	gcd=$(Gcd $num1 $num2);

	echo "Gcd=>$gcd";
}
first=$1
second=$2

main "$first" "$second"
