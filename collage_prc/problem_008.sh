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

diff_output=$(diff -b "$file1" "$file2")

if [ -z "$diff_output" ]; then
    echo "No differences found"
else
    echo "Differences found:"
    echo "$diff_output"
fi
