#!/bin/bash
echo "##########################"
echo "MOVING LOGS FILES SCRIPT"
echo "##########################"
echo ""

move_log_files () {
    folder=$1
    target_folder=$2
    cd "$folder"
    if [[ -d "$folder" ]]; then
        current_date=$(date +"%Y-%m-%d %H-%M-%S")
        formated_date=$(echo "$current_date" | sed 's/-/_/g')
        backup_file="$target_folder/backup_$formated_date.log"
        touch "$backup_file"
        for file in "$folder"/*.log
        do
            size=$(ls -l "$file" | awk '{print $5}')
            size_limit=$((1 * 1024 * 1024))

            if [[ "$size" -gt "$size_limit" ]]; then
                file_name=$(basename "$file")
                tar -czvf "$target_folder/$file_name.tar.gz" -C "$folder" "$file_name" > /dev/null
                if [ $? -eq 0 ];then
                    echo "moving $file_name as compressed file: [TIME]: $(date +"%Y-%m-%d %H:%M:%S")" >> "$backup_file"
                else
                   file_name=$(basename "$file")

                    echo "Failed to move file: $file"
                fi
            else
                file_name=$(basename "$file")
                echo "Ignoring $file_name, size less then 1MB: [TIME]: $(date +"%Y-%m-%d %H:%M:%S")" >> "$backup_file"
            fi

        done
    else
        echo "Folder not found"
    fi
}

FOLDER=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)/exercise\ 12
TARGET_FOLDER="$FOLDER"/backup


move_log_files "$FOLDER" "$TARGET_FOLDER"