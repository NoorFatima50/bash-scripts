#!/bin/bash
# Script: disk_alert.sh
# Purpose: Check disk usage and alert if above threshold

THRESHOLD=80   # you can change this value
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

echo "Current Disk Usage: $USAGE%"

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "ARNING: Disk usage is above ${THRESHOLD}%!"
else
  echo "Disk usage is under control."
fi
