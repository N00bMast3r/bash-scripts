#!/bin/bash


while getopts "hs:" arg; 
do
case $arg in
	h)
		echo "usage"
		;;
	s)
		STRENGTH=$OPTARG
		echo $STRENGTH
		;;
esac
done
