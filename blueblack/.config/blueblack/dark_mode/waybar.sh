#!/bin/bash
pkill -f "^"waybar
FILENAME="/home/leo/.config/waybar/style.css"
sed -i '1s/@import "latte.css"/@import "macchiato.css"/' "$FILENAME"
waybar >/tmp/waybar.log 2>&1 &
disown
