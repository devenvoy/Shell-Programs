#!/bin/bash

# Write a shell script which accepts filename as input and reverse individual words from it.
# (Please provide necessary validations)

read  -p "Enter file name : " file

if [ ! -f "$file" ]; then 
echo "error: $file does not exist"
exit 1
fi

while IFS= read -r line
do 
    for word in $line
    do
        reverse=$( echo "$word" | rev)
        echo "$reverse"
    done 
done < $file

echo 

# Using tr and xargs to reverse words
tr ' ' '\n' < "$file" | rev | xargs -n1 echo

echo

# Read the file and reverse each word
awk '{ for (i = 1; i <= NF; i++) print $i | "rev" }' "$file"