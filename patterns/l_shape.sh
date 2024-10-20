#!/bin/bash

# draw pattern
<< comment
1
12
123
1234
12345
comment

for i in {1..5}
do
    for j in $(seq 1 $i)
    do
        echo -n "$j"
    done
    echo ""
done