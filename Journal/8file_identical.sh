#!/bin/bash

<<comm

8. write a shell script that accepts two files are identical or not.

comm

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 file1 file2"
    exit 1
fi

# Assign arguments to variables
file1="$1"
file2="$2"

# Check if both files exist
if [ ! -f "$file1" ]; then
    echo "Error: '$file1' does not exist."
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "Error: '$file2' does not exist."
    exit 1
fi

# Compare the files
if cmp -s "$file1" "$file2"; then
    echo "Files '$file1' and '$file2' are identical."
else
    echo "Files '$file1' and '$file2' are different."
fi
