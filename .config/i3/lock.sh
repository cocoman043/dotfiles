#!/bin/sh
set -e
xset s off dpms 0 10 0
# i3lock -t -i ~/dotfiles/wallpaper/black_hole.png --ignore-empty-password --show-failed-attempts --nofork
BLANK='#00000000'
CLEAR='#ffffff22'
WHITE='#ffffffff'
BLACK='#000000ff'
DEFAULT='#ff00ffcc'
TEXT='#ff2222ff'
WRONG='#880000bb'
VERIFYING='#bb00bbbb'

i3lock \
--insidever-color=$BLACK     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$BLACK   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLACK        \
--ring-color=$TEXT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
\
--screen 1                   \
--blur 5                     \
-i ~/dotfiles/wallpaper/nerv.png \
-t \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %Y-%m-%d"       \
--keylayout 1                \
--nofork

xset s off -dpms
