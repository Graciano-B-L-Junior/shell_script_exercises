#!/bin/bash

EXERCISE_FOLDER="$(cd "$(dirname "${BASH_SOURCE[0]}")"/exercise\ 8 && pwd)"
FILE_NAME=names.txt
FILE_PATH="$EXERCISE_FOLDER/$FILE_NAME"

while IFS= read -r line;
do
    person="$line"
    person_folder="$EXERCISE_FOLDER/$person"
    mkdir -p "$person_folder"
    touch "$person_folder/info.txt"
done < "$FILE_PATH"


