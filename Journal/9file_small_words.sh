#!/bin/bash

<< comm
9. write a shell script to display all the words, having length <4 characters, of a file f1.txt
comm

#!/bin/bash

# Check if the file f1.txt exists

FILE=$1

if [ ! -f "$FILE" ]; then
    echo "Error: '$FILE' does not exist."
    exit 1
fi

# Use grep and awk to filter and display words with length < 4 characters
# grep -oE '\w+' "$FILE" | awk 'length < 4'

awk '
{
for(i=1; i<=NF; i++)
    if(length($i) < 4 ) print $i
}
' "$FILE"