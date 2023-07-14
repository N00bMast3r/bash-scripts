#!/bin/bash

# use readarray to create the associative names
echo enter names for Janitors from Mon-Sun
read NAME1 NAME2 NAME3 NAME4 NAME5 NAME6 NAME7

declare -A roster; declare -a order
roster[monday]=$NAME1; order+=( "monday" )
roster[tuesday]=$NAME2; order+=( "tuesday" )
roster[wednesday]=$NAME3; order+=( "wednesday" )
roster[thursday]=$NAME4; order+=( "thursday" )
roster[friday]=$NAME5; order+=( "friday" )
roster[saturday]=$NAME6; order+=( "saturday" )
roster[sunday]=$NAME7; order+=( "sunday" )

# print the names of responsible janitors for each day
for i in "${order[@]}"
do
	echo "$i" ${roster[$i]}
done

echo $order
