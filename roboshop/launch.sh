#!/bin/bash

COMPONENT=$1

## -z validates the variable empty,true if it is empty
if [ -z "${COMPONENT}" ]; then
  echo "Component Input is Needed"
  exit 1
  fi
  LID=lt-0b557ee178484346e
  LVER=1

aws ec2 run-instances --launch-template LaunchTemplateId=${LID},Version=${LVER} --tag-specification  "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}}]" | jq
