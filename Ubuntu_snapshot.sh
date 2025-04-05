#!/usr/bin/bash

# Define the variables
CURRENT_FILE="/home/abel/current_users.txt"
UPDATE_FILE="/home/abel/update_users.log"

# Take a snapshot of existing users and compare with the previous snapshot
awk -F: '{print $1}' /etc/passwd > /home/abel/current_users.new
diff "$CURRENT_FILE"  /home/abel/current_users.new >> "$UPDATE_FILE"

# Update the latest snapshot
mv /home/abel/current_users.new "$CURRENT_FILE"
