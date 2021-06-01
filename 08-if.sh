#!/bin/bash

## string comparision

read -p 'enter user name:' username

if [ "$username" == "root" ]; then
  echo "Hey,User $username is a Admin User"
  else
    echo "Hey, User $username is a Normal User"
    fi

    read -p 'enter filename: ' filename

    if [ -f "$filename" ]; then
      echo "File Exists"
      else
        echo "File Not found"
        fi
        ## Note: Always try to use variable inside quotes in expressions