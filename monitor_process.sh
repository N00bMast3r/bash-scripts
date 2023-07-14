#!/bin/bash

COUNTER=0
while ps -aux | grep $1 | grep -v grep | grep -v $0 > /dev/null
do
	COUNTER=$((COUNTER+1))
	sleep 1
	echo COUNTER is $COUNTER
done

logger SERIVCE MONITOR: $1 stopped at $(date)
