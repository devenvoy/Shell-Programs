#!/bin/bash

factorial() {
    local num=$1
    if [[ $num -lt 1 ]]; then
        echo 1
    else
    local prev=$(factorial $(($num - 1)))
    echo $(( $num * $prev))
    fi
}

read -p "Enter number to find factorial : " n1

echo $(factorial $n1)
