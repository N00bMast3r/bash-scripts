#!/bin/bash

# Start the script and it will run forever

while true
do
	sleep 6
	USAGE=`ps -eo pcpu,pid -o comm= | sort -k1 -nr | head -2 | tail -1 | awk '{ print $1 }'`
	USAGE=${USAGE%.*}
	PID=`ps -eo pcpu,pid -o comm= | sort -k1 -nr | head -2 | tail -1 | awk '{ print $2 }'`
	PNAME=`ps -eo pcpu,pid -o comm= | sort -k1 -nr | head -2 | tail -1 | awk '{ print $3 }'`

	if [ $USAGE -gt 80 ]
	then
		USAGE1=$USAGE
		PID1=$PID
		PNAME1=$PNAME
		sleep 7
	        USAGE2=`ps -eo pcpu,pid -o comm= | sort -k1 -nr | head -2 | tail -1 | awk '{ print $1 }'`
                USAGE2=${USAGE2%.*}
                PID2=`ps -eo pcpu,pid -o comm= | sort -k1 -nr | head -2 | tail -1 | awk '{ print $2 }'`
                PNAME2=`ps -eo pcpu,pid -o comm= | sort -k1 -nr | head -2 | tail -1 | awk '{ print $3 }'`
		
		[ $USAGE2 -gt 80 ] && [ $PID1 = $PID2 ] && logger HIGH CPU UTILIZATION ON $PNAME

	fi
done
