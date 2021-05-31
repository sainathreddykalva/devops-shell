#!/bin/bash

## declare a function

sample() {
  echo welcome to sample function
  echo value of a =$a
  b=20
}

##access your function

a=10

sample

echo value of b =$b