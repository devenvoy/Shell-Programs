#!/bin/bash

<< comment
6. Write a menu driven shell script which accepts basic amount as an input and displays
following options.
a. Dearness allowance (90% of basic)
b. Provident Fund F (12% of basic)
c. House Rent Allowance ( 20% of basic + DA)
d. Income tax deducted (5% of basic + DA + HRA)
e. Take home salary (basic + DA + HRA - IT)
comment

read -p "Enter basic amount: " amount

echo "select your choice "
echo "a) dearness allowance"
echo "b) provident fund "
echo "c) house rent allowance "
echo "d) income tax deducted "
echo "e) Take home salary "
read -p "Enter option: " choice

da=$(echo "$amount * 0.9" | bc)
pf=$(echo "$amount * 0.12" | bc)
hra=$(echo "0.20 * ($amount + $da)" | bc )
itr=$(echo "($da + $hra + $amount) * 0.05" | bc)
home=$(echo "$amount + $da + $hra - $itr" | bc)

case $choice in
a)
  echo "dearness allowance = $da"
  ;;
b)  
  echo "provident fund = $pf"
  ;;
c)
	echo "house rent allowance : $hra"
	;;
d)
  echo "income tax deducted = $itr"
  ;;
e)
  echo "Take home salary = $home"
  ;;
esac
