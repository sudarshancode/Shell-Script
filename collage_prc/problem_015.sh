#Write a shell script to input a year as command line argument
#and check whether the year is palindrome or not

#!/bin/bash

read -p "Enter a year:" year

rev_year=$( echo "$year" | rev )

if [ $year -eq $rev_year ]
then
	echo "The year is pailndrome"
else
	echo "the is not pailndrome"
fi
