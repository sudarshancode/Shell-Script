#Print current date time user_name and present_working_directory and store the result in a file 
#and counts the number of the characters in the file
#!/bin/bash

date=$(date)
user=$(whoami)
pd=$(pwd)
file="outputfile.txt"

echo "Date and time : $date" > "$file"

echo "Present working directory: $pd" >> "$file"

echo "User name: $user" >> "$file"

echo "The number of carecters in this file:"

count=$(wc -m < "$file");

echo "$count"

