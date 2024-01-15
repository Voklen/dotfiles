#!/bin/bash

# Get the directory where the script is located
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <destination_file>"
    exit 1
fi

# Assign arguments to variables
source_directory="$1"
destination_file="$2"

# Check if the source directory exists
if [ ! -d "$source_directory" ]; then
    echo "Error: Source directory '$source_directory' not found."
    exit 1
fi

# Check if the source directory is not empty
if [ -z "$(ls -A "$source_directory")" ]; then
    echo "Error: Source directory '$source_directory' is empty."
    exit 1
fi

# Get the current date
current_date=$(date "+%Y-%m-%d")

# Check if the script has already been run today
last_run_file="$script_dir/.last_run_date"
if [ -e "$last_run_file" ]; then
    last_run_date=$(cat "$last_run_file")
    if [ "$last_run_date" == "$current_date" ]; then
        echo "Script already run today. Exiting."
        exit 0
    fi
fi

# Get a random file from the source directory
random_file=$(find "$source_directory" -type f | shuf -n 1)

# Check if a file was found
if [ -z "$random_file" ]; then
    echo "Error: No files found in source directory '$source_directory'."
    exit 1
fi

# Copy the random file to the destination
cp "$random_file" "$destination_file"

swww img $destination_file
echo "Random image '$random_file' copied to '$destination_file'."

# Update the last run date
echo "$current_date" > "$last_run_file"
