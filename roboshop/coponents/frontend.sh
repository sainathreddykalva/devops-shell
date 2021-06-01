#!/bin/bash

source coponents/common.sh
rm -f /tmp/roboshop.log

HEAD "Installing Nginx "
yum install nginx -y &>>/tmp/roboshop.log
STAT $?

HEAD "Start Nginx\t"
systemctl start nginx &>>/tmp/roboshop.log
systemctl enable nginx &>>/tmp/roboshop.log
STAT $?