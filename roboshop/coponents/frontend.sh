#!/bin/bash

source coponents/common.sh
HEAD "Installing Nginx "
yum install nginx -y &>>/tmp/roboshop.log
STAT $?