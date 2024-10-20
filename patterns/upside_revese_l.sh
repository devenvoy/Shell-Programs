#!/bin/bash

# draw pattern
<< comment
 54321
  4321
   321
    21
     1
comment

for i in {5..1}
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