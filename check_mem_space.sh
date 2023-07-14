#!/bin/bash

MEM=$(free -m | grep Mem | awk '{ print $4 }')
SPACE=$(df -m / | grep '/$' | awk '{ print $4 }')

echo $MEM
echo $SPACE

# check if disk and mem is low
if [ $MEM -le 7000 ] && [ $SPACE -le $((1024 * 10)) ]
then
	echo LOW MEMORY AND DISK SPACE
	exit 1
# check if space is low
elif [ $SPACE -le $((1024 * 10)) ]
then
	echo LOW DISK SPACE
	exit 2
# check if mem is low
elif [ $MEM -le 7000 ]
then 
	echo LOW MEMORY
	exit 3
else
	echo ALL IS GOOD
	exit 4
fi
