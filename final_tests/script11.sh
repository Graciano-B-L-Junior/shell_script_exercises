#!/bin/bash
echo "##########################"
echo "VERIFYING PORTS OPEN (80 OR 443)"
echo "##########################"
echo ""
result=$(nc -zv localhost 80 2>&1)

if [[ "$result" =~ ^.*succeeded!$ ]];
then
    echo "Port 80 is open"
else
    echo "Port 80 is closed"
fi

result=$(nc -zv localhost 443 2>&1)

if [[ "$result" =~ ^.*succeeded!$ ]];
then
    echo "Port 443 is open"
else
    echo "Port 443 is closed"
fi