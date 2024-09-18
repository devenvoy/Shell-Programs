#!/bin/bash

# 12. Write a shell script which accepts a username and check the entered user is currently logged in or not.

# Prompt the user for a username
read -p "Enter username to check if currently logged in: " username

# Check if the username is currently logged in
if who | grep -q "^$username "; then
    echo "User '$username' is currently logged in."
else
    echo "User '$username' is not currently logged in."
fi
