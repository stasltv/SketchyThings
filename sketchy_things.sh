#!/bin/bash

# Fetch the first to-do item from 'Today' list
NEXT_TASK=$(osascript -e 'tell application "Things3" to get name of first to do of list "Today"')

# Trim any leading or trailing whitespace/newlines
NEXT_TASK=$(echo "$NEXT_TASK" | xargs)

# Set the maximum allowed length
MAX_LENGTH=40

# Check if the length of NEXT_TASK is greater than MAX_LENGTH
if [ ${#NEXT_TASK} -gt $MAX_LENGTH ]; then
    echo "Truncating task name"
    TRUNCATED_LENGTH=$((MAX_LENGTH - 3))
    NEXT_TASK="${NEXT_TASK:0:$TRUNCATED_LENGTH}..."
fi

# Set icon
ICON="󰚇"

# Ensure the item exists before setting the icon
if sketchybar --query "$NAME" > /dev/null 2>&1; then
    sketchybar --set "$NAME" \
     icon="$ICON" \
     label="$NEXT_TASK"
else
    echo "Item '$NAME' not found"
fi
