#compare two files and list the dissimilarities

#!/bin/bash

file1=$1;
file2=$2

if [ ! -f $file1 ] && [ ! -f $file2 ]
then
	echo "Two file must be exits"
	exit 1;
fi

echo "comapre two files and list the dissimilarites :"

diff "$file1" "$file2"
