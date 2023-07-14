#!/bin/bash

if [ -z $1 ]
then
	echo Argument Required
	exit 9
else
	PACKAGE=$1
fi

sudo apt install $PACKAGE -y

sudo systemctl enable --now $PACKAGE

