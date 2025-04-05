#!/usr/bin/bash

# Define the variables
CURRENT_FILE="/home/abel/Centos_current_users.txt"
UPDATE_FILE="/home/abel/Centos_update_users.log"

# Take a snapshot of existing users and compare with the previous snapshot
awk -F: '{print $1}' /etc/passwd > /home/abel/Centos_current_users.new
diff "$CURRENT_FILE"  /home/abel/Centos_current_users.new >> "$UPDATE_FILE"

# Update the latest snapshot
mv /home/abel/Centos_current_users.new "$CURRENT_FILE"
