#!/bin/bash

PS3='Enter your choice: '
OPTIONS=("Option 1" "Option 2" "Option 3" "Quit")

select OPT in "${OPTIONS[@]}"
do
case $OPT in
	"Option 1")
		echo "Option 1"
		;;
	"Option 2")
		echo "Option 2"
		;;
	"Option 3")
		echo "Option 3"
		;;
	"Quit")
		break
		;;
	*)
		echo "INVALID"
		;;
esac
done
