#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/exercise\ 7 && pwd )"
TARGET_FOLDER=important\ folder

date_infix=$(date +%Y_%m_%d)
prefix="backup"
backup_file_name="$prefix"_"$date_infix".tar.gz

if [ -d "$SCRIPT_DIR/$TARGET_FOLDER" ]; then
    echo "Creating backup of $TARGET_FOLDER..."
    tar -czvf "$SCRIPT_DIR/$backup_file_name" -C "$SCRIPT_DIR" "$TARGET_FOLDER"
else
    echo "Directory $TARGET_FOLDER not found."
fi