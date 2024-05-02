#!/bin/bash

# List files and their permissions in decimal format
ls -l | awk '!/^total/ {print $1, $9}' | while read permissions filename; do
    echo "$filename $(stat -c '%a' "$filename")"
done

