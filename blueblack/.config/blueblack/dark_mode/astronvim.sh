#!/bin/bash
FILENAME="/home/leo/.config/nvim/lua/plugins/astroui.lua"
sed -i '12s/colorscheme = "astrolight",/colorscheme = "astrodark",/' "$FILENAME"
