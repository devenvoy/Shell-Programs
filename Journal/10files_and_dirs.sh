#!/bin/bash

# 10. write a shell script to find total number of files and total number of directories in current working directory

files=$(ls -p | grep -v / | wc -l)
echo "Total files : " $files

dirs=$(ls -p | grep / | wc -l)
echo "Total directories : " $dirs