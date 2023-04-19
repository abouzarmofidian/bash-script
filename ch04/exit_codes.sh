#!/bin/bash

##############################
#       Example 1            #
##############################
package=htop

sudo apt install $package >> package_install_result.log

#echo "The exit code for the package install is: $?"

if [ $? -eq 0 ]
then
    echo "The installation of $package was successful."
    echo "The new command is available here:"
    which $package
else
    echo "$package failed to install." >> package_install_failure.log
fi

##############################
#       Example 2            #
##############################
directory=/etc

if [ -d $directory ]
then 
    echo "The directory $directory exists."
    exit 0
else
    echo "The directory $directory doesn't exists."
    exit 1
fi

echo "The exit code for this script run is $?"
echo "You didn't see that statement."
echo "You won't see this one either."