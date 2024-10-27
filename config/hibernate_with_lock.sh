#!/bin/bash

# Define the lock file path
LOCKFILE="/tmp/hibernate.lock"

# Check if lock file exists and exit if it does
if [ -f "$LOCKFILE" ]; then
    echo "Hibernation already in progress or recently triggered."
    exit 1
fi

# Create the lock file
touch "$LOCKFILE"

# Set up a trap to remove the lock file on exit
trap 'rm -f "$LOCKFILE"' EXIT

# Hibernate the system
systemctl hibernate
