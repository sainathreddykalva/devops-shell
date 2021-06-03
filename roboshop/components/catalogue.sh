#!/bin/bash

source components/common.sh
rm -f /tmp/roboshop.log
set-hostname catalogue

HEAD "Install NodeJS"
yum install nodejs make gcc-c++ -y &>>/tmp/roboshop.log
STAT $?

HEAD "Add Roboshop App User"
useradd roboshop &>>/tmp/roboshop.log
STAT $?

HEAD "Download App from GitHub"
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>/tmp/roboshop.log
STAT $?

HEAD "Extract the Downloaded Archive"
cd /home/roboshop && unzip -o /tmp/catalogue.zip &>>/tmp/roboshop.log && mv catalogue-main catalogue
STAT $?

HEAD "Install NodeJS Dependencies"
cd /home/roboshop/catalogue && npm install &>>/tmp/roboshop.log
STAT $?
