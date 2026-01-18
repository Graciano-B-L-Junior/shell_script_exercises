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

## script10.sh
Simple health check script. It prompts the user to enter a URL and then sends a GET request to that URL using the curl command. It checks the HTTP status code of the response and displays a message indicating whether the request was successful or not.

## script11.sh
Script 11 - Port Verification
This script verifies the status of ports 80 and 443 on the local machine (`localhost`).

## script12.sh
Moves and compresses log files based on their size. It scans a directory for `.log` files, checks if they exceed 1MB, and if so, compresses them into `.tar.gz` format in a backup folder, logging the operations.

### script13.sh
This script verifies if the required environment variables (`DB_HOST`, `DB_USER`, and `DB_PASSWORD`) are set and not empty. It serves as a configuration check to ensure the environment is correctly prepared before performing operations that depend on these variables.

### script14.sh
Interactive script for monitoring system services. It prompts the user to enter a service name, checks its status, and logs whether it is running or not. If the service is inactive, it attempts to restart it automatically.

### script15.sh
An automatic backup script that enables the user to select and archive specific system directories (`/etc`, `/home`, `/opt`) into timestamped compressed files. It also includes a maintenance feature to identify and remove backup files older than 7 days upon user confirmation.

### script16.sh
Validates YAML files intended for GitHub Actions. It allows the user to choose between specific YAML files and checks for the presence of essential keywords (`jobs` or `steps`) to determine if the file structure is valid for a workflow.

### Script17.sh - SSH Permission Validator
This script scans the `$HOME/.ssh` directory for SSH public key files (`*.pub`). It verifies if each file has `600` permissions (read/write for owner only). If a file is found with different permissions, the script offers an interactive option to automatically correct the permissions to `600`.

