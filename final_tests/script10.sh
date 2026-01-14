#!/bin/bash
echo "##########################"
echo "SIMPLE HEALTH CHECK SCRIPT"
echo "##########################"
echo ""
read -p "put some url here: " URL
echo ""

if [[ -z "$URL" ]]; then
    echo "URL is empty"
    exit 1
elif [[ "$URL" =~ ^https://.* ]]; then
    echo "Trying to send GET request to url: $URL"
    curl "$URL" > /dev/null 2> /dev/null
    if [[ $? -eq 0 ]]; then
        echo "Success"
        echo "Showing http status code"
        resultado=$(curl -s -o /dev/null -w "%{http_code}" "$URL")
        if [[ "$resultado" -eq 200 || "$resultado" -eq 301 ]]; then 
            echo "http status code: $resultado: OK"
        else
            echo "http status code: $resultado: NOT OK"
        fi
    else
        echo "Failed"
    fi
else
    echo "URL is not valid"
    exit 1
fi