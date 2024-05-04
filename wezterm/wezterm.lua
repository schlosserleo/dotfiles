local wezterm = require("wezterm")
return {
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	font = wezterm.font("Maple Mono NF"),
	font_size = 12,
	use_fancy_tab_bar = false,
	color_scheme = "Oxocarbon Dark",
	-- window_decorations = "RESIZE",
	hide_tab_bar_if_only_one_tab = true,
}
