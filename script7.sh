#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGET_FOLDER="exercise 7"

date_infix=$(date +%Y_%m_%d)
prefix="backup"
backup_file_name="$prefix"_"$date_infix".tar.gz

if [ -d "$SCRIPT_DIR/$TARGET_FOLDER" ]; then
    echo "Creating backup of $TARGET_FOLDER..."
    # -C changes directory to avoid absolute paths in the archive
    tar -czvf "$backup_file_name" -C "$SCRIPT_DIR" "$TARGET_FOLDER"
else
    echo "Directory $TARGET_FOLDER not found."
fi