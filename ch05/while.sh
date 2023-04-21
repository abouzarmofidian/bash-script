#!/bin/bash

##############################
#       Example 1            #
##############################
myvar=1
while [ $myvar -le 10 ]
do
    echo $myvar
    myvar=$(($myvar +1 ))
    sleep 0.5
done

##############################
#       Example 2            #
##############################

while [ -f ~/testfile ]
do
    echo "As of $(date), the test file is exists."
    sleep 5
done

echo "As of $(date), the file no longer exists. Existing."