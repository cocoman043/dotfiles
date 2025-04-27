#!/bin/bash
export HYPRLAND_INSTANCE_SIGNATURE=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $USER Hyprland)/environ | sed -E 's/.*HYPRLAND_INSTANCE_SIGNATURE=([^ ]*).*/\1/')
hyprctl reload
