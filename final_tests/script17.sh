#!/bin/bash
echo "##########################"
echo "VERIFY SSH FILE WITH PERMISSION 600 VALIDATION"
echo "##########################"
echo ""


SSH_FOLDER="$HOME"/.ssh

if [ -d "$SSH_FOLDER" ];then
    for file in "$SSH_FOLDER"/*.pub
    do
        file_name="$(basename "$file")"
        echo ""
        if [[ "$(stat -c %a $file)" == 600 ]];then
            echo "File $file_name has permission 600"
        else
            echo "File $file_name does not have permission 600"
            echo ""
            echo "DO YOU WANT TO FIX THAT?"
            select option in "yes" "no"
            do
                case $option in
                    "yes")
                        echo "Changing the file permission to 600"
                        chmod 600 "$file"
                        echo "File $file_name has permission 600"
                        echo ""
                        break
                        ;;
                    "no")
                        echo "Leaving..."
                        break
                        ;;
                    *)
                        echo "Invalid option"
                        ;;
                esac
            done
        fi
    done
else
    echo "Directory $SSH_FOLDER does not exist"
fi

exit 0
