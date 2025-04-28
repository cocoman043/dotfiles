#!/bin/sh
set -e
xset s off dpms 0 10 0
i3lock -t -i ~/dotfiles/wallpaper/black_hole.png --ignore-empty-password --show-failed-attempts --nofork
xset s off -dpms
