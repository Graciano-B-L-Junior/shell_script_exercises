#!/bin/bash

FOLDER="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


FILES_FOLDER="$FOLDER/exercise 4"

echo "#### Showing files ####"

for file in "$FILES_FOLDER/"*.txt
do
    echo "$file"
done

echo ""
echo "#######################"

echo "What to create backup files?"

select option in "y" "n"

do
    case $option in
        "y")
            for file in "$FILES_FOLDER/"*.txt
                do
                    old_filename="$( basename "$file")"
                    echo "Showing the old filename: $old_filename"
                    new_filename="$(echo $old_filename | sed 's/file/backup_file/g')"
                    echo "Showing the new filename: $new_filename"
                    cp "$file" "$FILES_FOLDER/$new_filename"
                done
            echo "Backup finished sucessfuly"
            break
            ;;
        *)
            break
            ;;
    esac
done

echo "Script ended, bye!"


