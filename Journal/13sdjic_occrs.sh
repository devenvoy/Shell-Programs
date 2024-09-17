#!/bin/bash

# 13.Write a shell script to find total number of occurrences of SDJIC in given file. (Please provide necessary validations)


read -p "Enter file name: " file

if [ ! -f "$file" ]; then
    echo "File does not exist"
    exit 1
fi

count=$(grep -o "SDJIC" "$file" | wc -l)

echo "Total count: $count"
