local wezterm = require("wezterm")
local rose_pine_color = require("lua.rose-pine").colors()
local rose_pine_window_frame = require("lua.rose-pine").window_frame()

local fontFamily = "JetBrains Mono"

return {
	force_reverse_video_cursor = true,
	font = wezterm.font_with_fallback({
		{
			family = fontFamily,
			weight = "Medium",
		},
		{
			family = "Symbols Nerd Font Mono",
			scale = 0.7,
		},
		"SF Pro",
		"Apple Symbols",
	}),
	font_rules = {
		{
			-- italic
			intensity = "Normal",
			italic = true,
			font = wezterm.font({
				family = fontFamily,
				weight = "Medium",
				italic = false,
			}),
		},
		{
			-- bold
			intensity = "Bold",
			italic = false,
			font = wezterm.font({
				family = fontFamily,
				weight = "ExtraBold",
			}),
		},
		{
			-- italic bold
			intensity = "Bold",
			italic = true,
			font = wezterm.font({
				family = fontFamily,
				weight = "ExtraBold",
				italic = false,
			}),
		},
	},
	font_size = 14,
	--
	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = false,
	initial_rows = 40,
	initial_cols = 135,
	window_padding = {
		top = 0,
		right = 0,
		bottom = 0,
		left = 0,
	},
	colors = rose_pine_color,
	window_frame = rose_pine_window_frame,
	window_decorations = "RESIZE",
	window_background_opacity = 0.85,
	macos_window_background_blur = 100,
	harfbuzz_features = { "calt=0" },
}
