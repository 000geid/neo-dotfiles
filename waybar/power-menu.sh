#!/bin/bash

entries="⭘ Logout\n⟲ Restart\n⏻ Shutdown"

selected=$(echo -e $entries | wofi --dmenu --insensitive --width 300 --height 160 hide_search=true --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    hyprctl dispatch exit;;
  restart)
    systemctl reboot;;
  shutdown)
    systemctl poweroff;;
esac 
