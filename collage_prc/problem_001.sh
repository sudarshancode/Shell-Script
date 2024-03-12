#!/bin/bash

isPrime ()
{
    local n=$1

    for (( i=2; i*i <= n ; i++ ))
    do
        if [ $((n%i)) == 0 ]
        then
            return 1
        fi
    done
    return 0
}

read -p "Enter value of n: " n

num=2
count=0

while [ $count -lt $n ]
do
    if isPrime "$num"
    then
        echo "$num"
        ((count++))
    fi
    ((num++))
done

