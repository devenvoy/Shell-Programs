#!/bin/bash

#read -p "Enter file name : " file
file="samp1"

if [ ! -f $file ]; then 
exit 1
fi

while IFS=" " read c1 c2 c3
do 
    echo "$c1"
done < $file