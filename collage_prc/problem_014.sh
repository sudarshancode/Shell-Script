#Write a shell script to input a file name containing multiple lines and
#then create a new file by copying line 4 to 10 from inputted file

#!/bin/bash

file1=$1;

outputFile="NewFile.txt"

sed -n '4,10p' "$file1" > "$outputFile"

if [ -f "NewFile.txt" ]
then
	echo "Copied file is created "
else
	echo "Error!"
fi
