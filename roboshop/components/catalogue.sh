#!/bin/bash

source components/common.sh
rm -f /tmp/roboshop.log
set-hostname catalogue

HEAD "Install NodeJS\t\t\t"
yum install nodejs make gcc-c++ -y &>>/tmp/roboshop.log
STAT $?

HEAD "Add Roboshop App User\t\t"
id roboshop &>>/tmp/roboshop.log
if [ $? -eq 0 ]; then
  echo User is Already Exisits,so skipping the User Creation &>>/tmp/roboshop.log
  STAT $?
  else
    usetradd roboshop &??/tmp/roboshop.log
    STAT $?
    fi

HEAD "Download App from GitHub\t"
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>/tmp/roboshop.log
STAT $?

HEAD "Extract the Downloaded Archive"
cd /home/roboshop && rm -rf * && unzip -o /tmp/catalogue.zip &>>/tmp/roboshop.log && mv catalogue-main catalogue
STAT $?

HEAD "Install NodeJS Dependencies\t"
cd /home/roboshop/catalogue && npm install --unsafe-perm &>>/tmp/roboshop.log
STAT $?

HEAD "Fix Permissions to App Content"
chown roboshop:roboshop /home/roboshop -R
STAT $?

