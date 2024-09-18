#!/bin/bash

clear

add() {
    echo $(($1 + $2))
}

sub() {
    echo $(($1 - $2))
}

mul() {
    echo $(($1 * $2))
}

div() {
    if [ $2 -ne 0 ]; then
        echo $(($1 / $2))
    else
        echo "Error: Division by zero"
    fi
}

mod() {
    if [ $2 -ne 0 ]; then
        echo $(($1 % $2))
    else
        echo "Error: Division by zero"
    fi
}

echo "Select an option"
echo "a) Addition"
echo "b) Subtraction"
echo "c) Multiplication"
echo "d) Division"
echo "e) Modules"

read choice

case $choice in
a)
    read -p "Enter num1 :" num1
    read -p "Enter num2 :" num2
    add num1 num2
    ;;
b)
    read -p "Enter num1 :" num1
    read -p "Enter num2 :" num2
    sub num1 num2
    ;;
c)
    read -p "Enter num1 :" num1
    read -p "Enter num2 :" num2
    mul num1 num2
    ;;
d)
    read -p "Enter num1 :" num1
    read -p "Enter num2 :" num2
    div num1 num2
    ;;
e)
    read -p "Enter num1 :" num1
    read -p "Enter num2 :" num2
    mod num1 num2
    ;;
*)
    echo "Invalid choice"
    ;;
esac

read -p "Enter (y) to continue or (*) to Exit : " again
if [[ ${again} == y ]]; then
    sh "${0}"
else
    exit 0
fi
