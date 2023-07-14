#!/bin/bash

read -p "Please provide a URL: " INPUT

OUTPUT=$(curl -s -o /dev/null -w %{http_code} $INPUT)

if [ $OUTPUT = 200 ]
then
	echo "Looks good"
else
	echo "Looks bad"
fi
