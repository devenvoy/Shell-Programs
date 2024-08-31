#!/bin/bash

#5. Write a shell script to print fibonacci series upto entered value N.

fibo_series(){
    local num=$1
    if [ $num -eq 0 ]; then 
    echo 0
    elif [ $num -eq 1 ]; then 
    echo 1
    else
    local prev1=$(expr $num - 1)
    local prev2=$(expr $num - 2)
    echo $(expr $prev1 + $prev2)
    fi
}

print_fibo(){
    local num=$1
    
}