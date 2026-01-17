#!/bin/bash
echo "##########################"
echo "YAML FILE FOR GITHUB VALIDATION SCRIPT"
echo "##########################"
echo ""

EXERCISE_FOLDER=$(cd "$(dirname "${BASH_SOURCE}")" && pwd)/exercise\ 16


while true; do
    echo ""
    echo "SELECT A FILE FOR GITHUB VALIDATION"
    echo ""
    select option in "complete.yml" "minimal.yml" "exit"
    do
        case $option in
            "complete.yml" | "minimal.yml")
                echo "Selected $option"
                full_path="$EXERCISE_FOLDER/$option"
                if grep -qE "jobs|steps" "$full_path"
                then 
                    echo "The $file it's ok for use"
                else
                    echo "The $file it's not ok for use"
                fi
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

