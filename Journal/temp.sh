#!/bin/bash

read -p "Enter file name : " file

if [ ! -f $file ]; then 
exit 1
fi

<<comm
for word in $(cat "$file"); do 
    if [ ${#word} -le 4 ]; then
        echo $word;
    fi
done
comm

while IFS=" " read line
do 
    echo "$line"
done < $file