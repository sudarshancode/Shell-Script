#Create a substring from a string

#!/bin/bash

read -p "Enter string:" st
read -p "Enter starting position:" sp
read -p "Enter length of the substring:" len

substring="${st:sp:len}"

echo "Subsstring is $substring"
