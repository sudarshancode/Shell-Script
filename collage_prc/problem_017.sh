#Write a shell script to count the number of words in a
#string given by the user

#!/bin/bash

read -p "Enter any string:" str;

number_of_words=$( echo "$str" | wc -w )

echo "The number of words: $number_of_words";
