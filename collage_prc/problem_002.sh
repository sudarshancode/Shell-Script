#Write a shell script to accept two file names and concatenate the content
# of the files into another file, if both files exist.

#!/bin/bash

file1=$1;
file2=$2;

newfile="concatenatefile.txt"

if [ ! -f $file1 ] || [ ! -f $file2 ]
then
	echo "Bothe files must be exist!!"
	exit 1
fi

cat "$file1" "$file2" > "$newfile"

echo "Concatenate the content of $file1 and $file2 into $newfile"
