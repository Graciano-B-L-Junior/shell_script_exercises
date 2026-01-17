#!/bin/bash
echo "##########################"
echo "AUTOMATIC BACKUP SCRIPT"
echo "##########################"
echo ""


echo "SELECT A FOLDER TO BACKUP"
backup_folder="$(cd "$(dirname "${BASH_SOURCE}")" && pwd)/exercise 15"
option=""
until [[ "$option" == "exit" ]]; do
    select option in "/etc" "/home" "/opt" "exit"
    do
        case $option in
            "/etc"|"/home"|"/opt")
                safe_name=$(echo "$option" | sed 's|/|_|g')
                echo "Selected $option"
                file="${safe_name}_$(date +%Y_%m_%d).tar.gz"
                echo "$file"
                tar -czf "$backup_folder/$file" "$option"
                ;;
            "exit")
                echo "Leaving..."
                ;;
            *)
                echo "Invalid option"
                ;;
        esac
        break
    done
done

echo "WANT TO REMOVE BACKUP WITH MORE THAN 7 DAYS OF CREATION? "
select option in "yes" "no"
do
    case $option in
        "yes")
        for file in "$backup_folder"/*.tar.gz
        do
            creation_date=$(stat -c %Y "$file")
            seven_days_ago=$(($(date +%s) - 7*24*60*60))
            echo "creation_date:  $creation_date"
            echo "seven_days_ago: $seven_days_ago"
            if [[ "$creation_date" -lt "$seven_days_ago" ]]; then
                echo "removing $file"
                rm "$file"
            fi
        done    
        ;;
        "no")
            echo "Leaving..."
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
    break
done
exit 0
