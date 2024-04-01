#Write a shell script to fibd the LCM of two integers
#!/bin/bash

gcd(){
	n1=$1;
	n2=$2;

	while [ $n2 -ne 0 ]
	do
		local temp=$n2;
		n2=$(($n1%$n2));
		n1=$temp;
	done;
	echo $n1;
}

lcm(){
	n1=$1;
	n2=$2;
	
	gcd=$(gcd $n1 $n2)

	lcm=$(($(($n1 * $n2))/$gcd));

	echo $lcm;

}

main(){


	read -p "Enter first number:" num1;
	read -p "Enter second number:" num2;

	lcm_var=$(lcm $num1 $num2);
	echo "The LCM of two integers are => $lcm_var";
}
main

