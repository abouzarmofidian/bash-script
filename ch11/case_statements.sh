#!/bin/bash

echo "What is your favorite Linux distribution?"

echo "1 - Arch"
echo "2 - Centos"
echo "3 - Debian"
echo "4 - Ubuntu"
echo "5 - Something else ..."


read distro;

case $distro in 
    1) echo "Arch is a rolling release.";;
    2) echo "Centos is popular on servers.";;
    3) echo "Debian is community distribution.";;
    4) echo "Ubuntu is popular on both servers and computers .";;
    *) echo "You didn't enter an appropriate choice."
esac

