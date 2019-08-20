#!/bin/bash
echo "$0 $@" >&2

set -x

#STEAM_RUNTIME=/home/wouter/.steam/ubuntu12_32/steam-runtime


/usr/bin/Xephyr :15 -ac -screen 1920x1080 -host-cursor -once &
export DISPLAY=:15
openbox-session &
sleep 5
exec "$1"
#killall Xephyr
