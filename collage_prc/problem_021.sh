#Write a shell script to check whether a number is automorphic number or not

#!/bin/bash

read -p "Enter a number:" num;

squar=$(($num*$num));

echo $squar;
flag=0;
length=${#squar};
new_length=$(($length-1));
divi=1;

while [ $new_length -lt $length ]
do
	digit=$(($squar%$(($divi*10))))
	if [ $digit -eq $num ]
	then
		flag=1;
		break;
	else
		divi=$(($divi*10));
	fi

done;

if [ $flag -eq 1 ]
then
	echo "The number is automorphic"
else
	echo "The number is not automorphic"
fi

