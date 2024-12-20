#!/usr/bin/env bash

status=$(hyprctl activewindow | grep grouped: | xargs)

if [ "$status" == "grouped: 0" ]; then
    hyprctl dispatch moveintogroup l
    hyprctl dispatch moveintogroup r
    hyprctl dispatch moveintogroup u
    hyprctl dispatch moveintogroup d
else
    hyprctl dispatch moveoutofgroup r
fi