#!/bin/bash

file="/home/leo/.config/wezterm/wezterm.lua"

sed -i '10s/.*/window_decorations = "TITLE | RESIZE",/' "$file"

sed -i '17s/.*/enable_wayland = false,/' "$file"
