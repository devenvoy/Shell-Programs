#!/bin/bash

# 11.Write a shell script to find total number of characters, words and lines of a file. (Do not use wc command.

read -p "Enter file name : " file

if [ ! -f "$file" ]; then
echo "error: $file does not exits"
exit 1
fi

lines=0
words=0
chars=0

while IFS= read -r line 
do 
    ((lines++)) # increment lines count by each line
    chars=$(( $chars + ${#line} )) 
    # chars += all chars length of current line 
    # ${#line}

    for wrds in $line
    do
        ((words++)) # increment words count on each word of current line
    done  # for 
done < $file  #while  

echo "Total lines : $lines"
echo "Total words : $words"
echo "Total chars : $chars"


# Use awk to perform the counting
awk '
{
    lines++;
    # Increment line count
    words += NF;                     
    # Add the number of fields (words) in the current line
    chars += length($0);
    # Add the length of the current line to character count
}
END {
    print "Total lines: " lines;     
    # Print total lines
    print "Total words: " words;
    # Print total words
    print "Total chars: " chars;
    # Print total characters
}
' "$file"