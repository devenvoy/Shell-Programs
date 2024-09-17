#!/bin/bash

<<comm
7. write a shell script to find file permissions of user, group and others.
comm

if [ "$#" -ne 1 ]; then
echo "usage : $0 filename"
exit 1
fi

FILE="$1"

if [ ! -e "$FILE" ]; then
echo "Error: File '$FILE' does not exist"
exit 2
fi

PERMISSIONS=$(ls -l "$FILE" | cut -d" " -f1)

echo $PERMISSIONS

# Extract and display the permissions for user, group, and others
USER_PERMS=${PERMISSIONS:1:3}
GROUP_PERMS=${PERMISSIONS:4:3}
OTHER_PERMS=${PERMISSIONS:7}

echo "User Permissions: $USER_PERMS"
echo "Group Permissions: $GROUP_PERMS"
echo "Other Permissions: $OTHER_PERMS"