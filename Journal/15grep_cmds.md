
### Write grep command to perform following actions:

a. Count number of blank lines in file f1.txt:
``` sh 
grep -c '^$' f1.txt
``` 

b. Print all lines containing sdjic:
``` sh 
grep 'sdjic' f1.txt
```

c. Print the lines that start with sdjic:
``` sh
grep '^sdjic' f1.txt
``` 

d. Search the files in CPROGRAMS directory which have the string include:
``` sh
grep -r 'include' CPROGRAMS
``` 

e. Print lines having exactly 50 characters in file f1.txt:
``` sh
grep '^.\{50\}$' f1.txt
``` 

f. (This is a duplicate of a) Count number of blank lines in file f1.txt:
``` sh
grep -c '^$' f1.txt
``` 

g. Display lines having at least one character in file f1.txt:
``` sh
grep '.' f1.txt
```

h. Display lines having sdjic text in any case in file f1.txt:
``` sh
grep -i 'sdjic' f1.txt
``` sh

i. Display lines of file f1.txt having exactly 3 characters:
``` sh
grep '^.\{3\}$' f1.txt
``` 

j. Display lines of file f1.txt which begin with any alphabet:
``` sh
grep '^[a-zA-Z]' f1.txt
``` 

k. Display lines whose last word is UNIX in file f1.txt:
``` sh
grep 'UNIX$' f1.txt
``` 

l. Display filenames having last character as digit [0-9]:
``` sh
ls | grep '[0-9]$'
``` 

m. Display list of filenames that only consist of digits:
``` sh
ls | grep '^[0-9]+$'
``` 

n. Display lines of file f1.txt which only consist of digits:
``` sh
grep '^[0-9]*$' f1.txt
``` 

o. Display lines of file f1.txt which only consist of capital alphabets:
``` sh
grep '^[A-Z]*$' f1.txt
``` 

p. Search all lines in file f1.txt which ends with “.”
``` sh
grep '\.$' f1.txt
```