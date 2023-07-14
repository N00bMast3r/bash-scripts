#!/bin/bash


if [ -z $1 ]
then 
	echo Please provide an argument
	exit 1
fi

MEM=$(free -m | grep Mem | awk '{ print $4 }')

if [ $MEM -le 256 ]
then 
	echo Memory too low
	exit 2
fi

sudo apt install $1
sudo systemctl enable $1
