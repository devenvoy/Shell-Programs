#!/bin/bash

# set -x
#2. Write a shell script to find all prime numbers in given range.

read -p "Enter the Minimum value of range : " num1
read -p "Enter the Maximum value of range : " num2


is_prime() {
    local num=$1
    [[ $num -lt 2 ]] && return 1
    for ((i=2; i*i<=num; i++)); do
        if ((num % i == 0)); then
            return 1
        fi
    done
    return 0
}

for ((j = $num1; j <= $num2; j++)); do
    if is_prime $j; then
        echo "$j is prime number"
    fi
done

