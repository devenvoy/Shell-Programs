#!/bin/bash
# 1. Write a shell script to find greatest amongst three numbers.

read -p "Enter value 1 : " n1
read -p "Enter value 2 : " n2
read -p "Enter value 3 : " n3

if [[ $n1 -gt $n2 ]] && [[ $n1 -gt $n3 ]]; then
    echo "Max number is $n1"
    elif [[ $n2 -gt $n3 ]]; then
    echo "Max number is $n2"
    else
    echo "Max number is $n3"
fi