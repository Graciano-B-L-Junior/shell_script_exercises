echo "##########################"
echo "AUTOMATIC BACKUP SCRIPT"
echo "##########################"
echo ""


echo "SELECT A FOLDER TO BACKUP"
backup_folder="$(cd "$(dirname "${BASH_SOURCE}")" && pwd)/exercise 15"
echo "$backup_folder"
while true; do
    select option in "/etc" "/home" "/opt" "exit"
    do
        # Cria um nome seguro para o arquivo substituindo / por _
        safe_name=$(echo "$option" | sed 's|/|_|g')
        
        case $option in
            "/etc")
                echo "Selected $option"
                file="$safe_name"_"$(date +%Y_%m_%d).tar.gz"
                echo "$file"
                tar -czf "$backup_folder/$file" "$option"    
                ;;
            "/home")
                echo "Selected $option"
                file="$safe_name"_"$(date +%Y_%m_%d).tar.gz"
                echo "$file"
                tar -czf "$backup_folder/$file" "$option"   
                ;;
            "/opt")
                file="$safe_name"_"$(date +%Y_%m_%d).tar.gz"
                echo "$file"
                tar -czf "$backup_folder/$file" "$option"
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
