#!/bin/bash
##############################
#       Example 1            #
##############################
mynum=300

#if [ $mynum -eq 200 ]
#if [ ! $mynum -eq 200 ]
if [ $mynum -ne 200 ]
then
    echo "The condition is true."
else
    echo "The variable does not equal 200."
fi

##############################
#       Example 2            #
##############################
if [ -f ~/myfile ]
then
    echo "The file exists"
else 
    echo "The file does not exists"
fi


##############################
#       Example 3            #
##############################

#command=/usr/bin/htop
command=htop

#if [ -f $command ] 
if command -v $command 
then
    echo "$command is available, let's run it ..."
else
    echo "$command is not available, installing it ..."
    #sudo apt update && sudo apt install -y htop
    sudo apt update && sudo apt install -y $command
fi
$command