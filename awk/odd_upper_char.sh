#!/bin/bash

read -p "Enter String : " input_str

output_str=""


echo $input_str | awk '{
    for (i = 1; i <= length($0); i++) {
        char = substr($0, i, 1)
        if (i % 2 == 1) {
            printf toupper(char)
        } else {
            printf char
        }
    }
    printf "\n"
}'

