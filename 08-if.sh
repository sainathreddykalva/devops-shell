#!/bin/bash

## string comparision

read -p 'enter user name:' username

if [ "$username" == "root" ]; then
  echo "Hey,User $username is a Admin User"
  else
    echo "Hey, User $username is a Normal User"
    fi