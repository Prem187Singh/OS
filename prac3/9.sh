#!/bin/bash

echo "a. The message 'today is:' with current date in mm/dd/yy format."
echo "Today is: $(date +'%m/%d/%y')"

echo "b. The message 'no of users logged in:' with the total number of currently logged in users."
echo "Number of users logged in: $(who | wc -l)"

echo "c. The message 'personal status:' with your own login name, port number, date, and time of login."
echo "Personal status:"
echo "Login Name: $USER"
echo "Port Number: $SSH_CONNECTION"
echo "Date and Time of Login: $(date)"

echo "d. Files in the directory in descending order of size:"
ls -lS | awk '{if(NR>1) print $5 "\t" $9}'

echo "e. Files with zero size and write permission 'on':"
find . -type f -size 0 -perm -o=w
