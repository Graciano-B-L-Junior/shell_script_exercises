# Bash Scripts Documentation

This repository contains a collection of Bash scripts for automation and learning. Below is a summary of how each file works:

## script1.sh
An introductory script for simple interaction. It asks the user to type their name and returns a personalized greeting message.

## script2.sh
Checks for the existence of specific directories defined in the code. If the directories exist, the script lists the files contained in them; otherwise, it informs that the folder was not found.

## script3.sh
Functions as a basic calculator. The script asks the user for two numbers and presents a menu to select an arithmetic operation (addition, subtraction, multiplication, or division), displaying the result of the chosen operation.

## script4.sh
Manages files in an exercises directory. It lists existing `.txt` files and asks if the user wants to perform a backup. If the answer is positive ("y"), it creates copies of the files renaming them (replacing "file" with "backup_file").

## script5.sh
Monitors system processes. The user provides a process name, and the script checks if it is running. If it is running, it displays the corresponding PID (Process ID).

## script6.sh
A countdown timer. Requests an integer from the user, validates the input to ensure it is numeric, and starts a countdown to zero, with 1-second intervals.

## script7.sh
Automates a directory backup. It verifies the existence of a target folder ("important folder") and creates a timestamped compressed archive (`.tar.gz`) of its contents.

## script8.sh
Reads a list of names from a file (`names.txt`) and creates a directory for each name. Inside each created directory, it generates an empty `info.txt` file.

## script9.sh
Prompts the user to create a password. It validates the input to ensure it meets specific criteria (minimum 8 characters and at least one number) and loops until a valid password is provided.
