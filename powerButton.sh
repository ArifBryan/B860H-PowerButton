#!/bin/bash

btn=$(gpiomon -f -n1 -F%e aobus-banks 2)
if [ $btn -eq 0 ]
then
  poweroff
fi
