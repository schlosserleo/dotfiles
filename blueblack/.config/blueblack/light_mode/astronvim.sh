#!/bin/bash
FILENAME="/home/leo/.config/nvim/lua/plugins/astroui.lua"
sed -i '12s/colorscheme = "astrodark",/colorscheme = "astrolight",/' "$FILENAME"
