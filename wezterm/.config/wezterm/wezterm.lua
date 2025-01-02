local wezterm = require("wezterm")

return {
	front_end = "WebGpu",
	-- front_end = "OpenGL",
	color_scheme = "Catppuccin Mocha",
	font = wezterm.font({
		family = "Maple Mono NF",
		weight = "Medium",
	}),
	font_size = 12,
	window_decorations = "TITLE|RESIZE",
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		right = 0,
		top = 5,
		bottom = 0,
	},
	enable_wayland = true,
}
