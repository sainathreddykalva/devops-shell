#!/bin/bash

## declare a function

sample() {
  echo welcome to sample function
  ## come out of function using return comand
  return
  echo value of a =$a
  echo first argument =$1
  echo second argument =$2
  b=20
}

##access your function

a=10

sample 300 500

## taking cli arguments wit functions
sample $1 $2

echo value of b =$b