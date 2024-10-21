#!/bin/bash

file="./records.txt"

>"$file"

echo "Enter 10 records (press ctrl + d to stop early )"

for i in $(seq 1 10)
do
    read -p "r $i: " record
    echo $record >> "$file"
done

echo "Records have been saved to $file"
