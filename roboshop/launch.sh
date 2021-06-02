#!/bin/bash

COMPONENT=$1

## -z validates the variable empty,true if it is empty
if [ -z "${COMPONENT}" ]; then
  echo "Component Input is Needed"
  exit 1
  fi
  LID=lt-0b557ee178484346e
  LVER=1
  ##validate if instance is already exists
 INSTANCE_STAT=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=${COMPONENT}" | jq .Reservations[].Instances[].State.Name | xargs -n1)

if [ "$(INSTANCE_STAT)" = "running" ]; then
  echo "instance already exists!!"
  exit 0
  fi
  if [ "$(INSTANCE_STAT)" = "stopped" ]; then
    exit 0
    fi
    aws ec2 run-instances --launch-template LaunchTemplateId=${LID},Version=${LVER} --tag-specification  "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}}]" | jq