#!bin/bash

#2. Write a shell script to find all prime numbers in given range.

read -p "Enter the Minimum value of range : " num1
read -p "Enter the Maximum value of range : " num2

flag=0
for ((i = $num1; i <= $num2; i++)); do
    for ((n = 2; n < $i; n++)); do
        if [[ $(expr $i % $n) -eq 0 ]]; then
            flag=1
            break
        fi
    done # inner loop ended

    if [ $flag -eq 0 ]; then
        echo "$i is a prime number"
    fi
    flag=0
done
