#Cheack a number is armstrong number or not

#!/bin/bash

power(){
    local num=$1;
    local exp=$2;
    result=1;
    for ((i=0;i<$exp; i++))
    do
        result=$(($result * $num))
    done
    echo "$result";
}


is_armstrong(){
    num=$1;
    num_digit=${#num};
    temp=$num;
    sum=0;
    while [ $temp -gt 0 ]
    do
        digit=$(($temp%10));
        temp=$(($temp/10));
       sum=$(($sum + $(power $digit $num_digit))); 
    done
    
    if [ $num -eq $sum ]
    then
        echo "The number is armstrong";
    else
        echo "The number is not armstrong";
    fi
    
}
read -p "Enter a number:" number;
is_armstrong "$number"
	
