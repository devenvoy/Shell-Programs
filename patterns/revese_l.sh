#!/bin/bash

# draw pattern
<< comment   
     1
    21
   321
  4321
 54321
comment

for i in {1..5}
do
    for k in $(seq $i 5)
    do 
    echo -n " "
    done
    for j in $(seq $i 1)
    do
        echo -n "$j"
    done
    echo ""
done