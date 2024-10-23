#!/bin/bash
FILENAME="/home/leo/.config/wezterm/wezterm.lua"
sed -i '4s/color_scheme = "astrodark"/color_scheme = "astrolight"/' "$FILENAME"
