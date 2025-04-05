#!/usr/bin/bash

# Define the variables for directories

# These are the script file being backed up
HOME_DIR="/home/abel/" 

# This is the backup directory
BACKUP_DIR="/home/abel/backup"

# This will create the backup directory if it does not exist 
mkdir -p "$BACKUP_DIR"

# This is the current date and time 
DATE=$(date +%Y%m%d%H%M%S)


# Create the compressed backup
tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" -C "$HOME_DIR" *.sh
