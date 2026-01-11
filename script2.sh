#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FOLDER="$SCRIPT_DIR/exercise 2/folder with items"
NEX_FOLDER="$SCRIPT_DIR/exercise 2/any"


if [ -d "$FOLDER" ]
then
    echo "folder exists"
    echo "#######################"
    echo "showing files inside"
    echo "#######################"
    for file in "$FOLDER"/*
    do
        echo $file
    done
else
    echo "folder does not exist"
fi

echo ""
echo "Searching for a new folder"
echo "$NEX_FOLDER"

if [ -d "$NEX_FOLDER" ]
then
    echo "folder exists"
    echo "#######################"
    echo "showing files inside"
    echo "#######################"
    for file in "$NEX_FOLDER"/*
    do
        echo $file
    done
else
    echo "folder does not exist"
fi
