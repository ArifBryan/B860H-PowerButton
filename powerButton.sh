#!/bin/bash

gpioset periphs-banks 73=0
gpioset periphs-banks 75=1

while :
do
  btn=$(gpiomon -f -n1 -F%e aobus-banks 2)

  if [ $btn -eq 0 ]
  then
    poweroff

    while :
    do :
    done
  fi
done
