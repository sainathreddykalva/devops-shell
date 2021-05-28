#!/bin/bash

##Declare a Variable

COURSE=DevOps
echo COURSE NAME = $COURSE
#Access a Variable

DATE=$(date +%F)

echo  good morning today date is $DATE

NO_OF_USERS=$(who | wc -l)

echo No of users logged in to system = $NO_OF_USERS

