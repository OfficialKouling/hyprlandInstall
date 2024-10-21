#!/bin/bash
# This script toggles fullscreen mode on or off.

# Get the current fullscreen state of the focused window
FULLSCREEN_STATE=$(hyprctl activewindow | grep "fullscreen: " | awk '{print $2}')

# Toggle between 0 and 1
if [ "$FULLSCREEN_STATE" -eq 0 ]; then
    hyprctl dispatch fullscreen 1
else
    hyprctl dispatch fullscreen 0
fi
