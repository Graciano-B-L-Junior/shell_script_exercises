#!/bin/bash

read -p "Search for a process and see if it's running: " PROCESS_NAME

if [[ -n "$(ps aux | grep "$PROCESS_NAME" | grep -v grep | awk '{print $2}')" ]]
then
    echo "Process $PROCESS_NAME is running"
    echo "Showing $PROCESS_NAME PID"
    pid="$( ps aux | grep "$PROCESS_NAME" | grep -v grep | awk '{print $2}' | tail -n 1 )"
    echo "pid: $pid"
else
    echo "Process $PROCESS_NAME is not running"
fi