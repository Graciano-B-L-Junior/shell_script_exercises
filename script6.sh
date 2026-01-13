#!/bin/bash

read -p "Put a number to run a countdown timer: " NUMBER

if [[ "$NUMBER" =~ ^[0-9]+$ ]];
then
    echo "You typed a number $NUMBER"
    echo "starting a countdown"
    until [ "$NUMBER" -le 0 ]
    do
        echo "$NUMBER"
        ((NUMBER--))
        sleep 1
    done
    echo "Countdown finished"
else
    echo "Type a number on next time"
fi
