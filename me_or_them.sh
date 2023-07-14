#!/bin/bash


read -p "Enter me or them: " INPUT
case $INPUT in
	[Mm][Ee])
		echo "ME!!"
		;;
	[Tt][Hh][Ee][Mm])
		echo "THEM!!"
		;;
	*)
		echo "Choose me or them!"
		;;
esac
