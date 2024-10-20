#!/bin/bash

#5. Write a shell script to print fibonacci series upto entered value N.

read -p "Enter number to fibonacci upto n :" num

first=0
second=1
index=0

while [ $num -gt $index ]; do
    third=$(($first + $second))
    echo  "$first"
    first=$second
    second=$third
    index=$(( $index + 1 ))
done
