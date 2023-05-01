#!/bin/bash

#find /etc -type f 2> /dev/null #St error
#find /etc -type f > /dev/null  #st output
#find /etc -type f 1> /dev/null #st output
#find /etc -type f &> file.txt  #st output and error
#find /etc -type f 1>file_results.txt 2>file_errors.txt

release_file=/etc/os-release
logfile=/var/log/update.log
errorlog=/var/log/updater_errors.log

#if [ -d /etc/pacman.d ]
if grep -q "Arch" $release_file
then
    #The host is base on Arch, run the pacman update command
    sudo pacman -Syn 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file"
    fi
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
    #The host is base on Debian or Ubuntu,
    #Run the apt version of the command
    sudo apt update 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file"
    fi
    sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file"
    fi
fi