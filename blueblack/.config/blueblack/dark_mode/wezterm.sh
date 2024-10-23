#!/bin/bash
FILENAME="/home/leo/.config/wezterm/wezterm.lua"
sed -i '4s/color_scheme = "astrolight"/color_scheme = "astrodark"/' "$FILENAME"
