#!/bin/bash

#Write a shell script to find sum of digits of a number.

read -p "Enter number : " num

sum=0

while [[ $num -gt 0 ]]
do
    r=$(expr $num % 10)
    sum=$(expr $sum + $r)
    num=$(expr $num / 10)    
#    num= `expr $num / 10`
#    r= `expr $num % 10`
#    sum=`expr $sum + $r`
done

echo "Sum of digits: $sum"