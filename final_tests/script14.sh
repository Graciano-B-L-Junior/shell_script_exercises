#!/bin/bash
echo "##########################"
echo "SERVICES MONITORING SCRIPT"
echo "##########################"
echo ""

log_filename=script14.log
log_folder="$(cd "$(dirname "${BASH_SOURCE}")" && pwd)/exercise 14"
log_file_full_path="$log_folder/$log_filename"


while true; do
    select option in "monitor services" "exit"
    do
        case $option in
            "monitor services")
                read -p "which service do you want to monitor? " service
                if [[ -z "$service" ]];then
                    echo "Service is empty"
                    exit 1
                fi

                echo "Monitoring service: $service"
                
                status=$(systemctl is-active --quiet "$service")

                if  [[ "$?" -eq 0 ]];
                then
                    var="$service is running"
                    echo "$var" >> "$log_file_full_path"
                    echo "$var"
                else
                    echo "$service is not running"
                    var="restarting $service"
                    echo "$var" >> "$log_file_full_path"
                    echo "$var"
                    systemctl restart "$service"
                fi
                echo ""

                ;;
            "exit")
                echo "Leaving..."
                exit 0
                ;;
            *)
                echo "Invalid option"
                ;;
        esac
        break
    done
done