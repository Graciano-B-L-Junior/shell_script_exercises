#!/bin/bash

while true;
do
    read -p "Create new password: " new_password
    if echo "$new_password" | grep -Pq "^(?=.*[0-9]).{8,}$";
    then
        echo "new password created: $new_password"
        break
    fi

    echo "Invalid password, try again."
        
done