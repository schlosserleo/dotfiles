local wezterm = require("wezterm")

return {
	color_scheme = "astrodark",
	font = wezterm.font({
		family = "Maple Mono NF",
		weight = "Medium",
	}),
	font_size = 12,
	window_decorations = "NONE",
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		right = 0,
		top = 5,
		bottom = 0,
	},
	enable_wayland = true,
	-- window_background_opacity = 0.92,
}
