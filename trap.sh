#!/bin/bash

#INT is ctr C
#TERM is kill
trap "echo ignore signal" INT TERM
echo pid is $$

while :
do
	sleep 60
done
