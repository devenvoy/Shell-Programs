
### Write sed command to perform following tasks

a. To print only the last line of f1.txt
``` sh
sed -n '$p' f1.txt
```

b. To print lines number 1-3, 6-7, and 10 of f1.txt
``` sh
sed -n -e '1,3p' -e '6,7p' -e '10p' f1.txt
```

c. To print lines beginning with SDJIC of f1.txt
``` sh 
sed -n '/^SDJIC/p' f1.txt
```

d. To print three lines starting from the fourth line of f1.txt
``` sh 
sed -n '4,6p' f1.txt
```

e. To print all blank lines of file f1.txt
``` sh 
sed -n '/^$/p' f1.txt
```

f. To print lines having either sdjic or sdjyc
``` sh 
sed -n '/sdjic\|sdjyc/p' f1.txt
````

g. Lines beginning with either alphabet or digit
``` sh 
sed -n '/^[a-zA-Z0-9]/p' f1.txt
```

h. To insert a line "additional line" before every line
``` sh 
sed 'i\additional line' f1.txt
```

i. To replace every occurrence of | with : in the first three lines
``` sh 
sed '1,3s/|/:/g' f1.txt
```

j. To replace every occurrence of | with : in every line
``` sh 
sed 's/|/:/g' f1.txt
```

k. To remove all the lines having word "fail" from file f1.txt (delete command)
``` sh 
sed '/fail/d' f1.txt
```