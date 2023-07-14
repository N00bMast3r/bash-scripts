#!/bin/bash

PS3="Please choose an option: "
OPTIONS=("DISK SPACE" "MEMORY" "WHO IS LOGGED IN" "QUIT")

trap "echo ignore signal" SIGINT
select OPT in "${OPTIONS[@]}"
do
case $OPT in
	"DISK SPACE")
#		read -p "Please provide a path: " PATH
		SPACE=$(df -m / | grep '/$' | awk '{ print $4 }') 
		echo $SPACE
		;;
	"MEMORY")
                MEM=$(free -m | grep Mem | awk '{ print $4 }')
		echo $MEM
		;;
	"WHO IS LOGGED IN")
		OUTPUT=$(who)
		echo $OUTPUT
		;;
	"QUIT")
		break
		;;
	*)
		echo "INVALID"
		;;
esac
done
