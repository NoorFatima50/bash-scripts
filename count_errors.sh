#!/bin/bash

# Path to log file
LOG_FILE="/home/hp/sample.log"

# Check if log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Log file not found: $LOG_FILE"
    exit 1
fi

# Initialize counter
error_count=0

# Loop through each line in the log file
while IFS= read -r line
do
    if echo "$line" | grep -iq "error"; then
        ((error_count++))
    fi
done < "$LOG_FILE"

echo "Total error lines found: $error_count"
