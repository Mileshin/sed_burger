#!/bin/bash

TMP=''
START=0
LEVEL=1
END=0
while true; do
clear
echo "press q to exit"
echo $LEVEL | ./levels.sed
if [ "$LEVEL" = "quit" ]; then
	break 2
fi
if [ "$LEVEL" = "6" ]; then
	sleep 3
	break 2
fi
sleep 3 
clear
echo '' > res
  (while true; do
	if [ $START -eq 0 ]; then
		START=1
		echo
		continue
	fi
	read -s -n 1 -t 1 TMP
	RES=$?
    if [ "$TMP" != "" ];  then
        if [ "$RES" -eq 0 ]; then
		    echo $TMP
        else 
            echo ~
        fi
    else
        echo ~
	fi
	CMD=''
	TMP=''
done) | ./burger.sed 
LEVEL=`sed -n '$,$p' res`_`echo $LEVEL`
LEVEL=`echo "$LEVEL" | ./nextlevel.sed`
END=1
clear
if [ "$LEVEL" = "quit" ]; then
	break 2
fi
done

