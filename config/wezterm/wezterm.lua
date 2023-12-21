-- Pull in the wezterm API
local wezterm = require("wezterm")

require("statusbar")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

config.window_background_opacity = 0.95
config.macos_window_background_blur = 15

-- For example, changing the color scheme:
config.color_scheme = "Dracula"

-- Config related to text font and text rendering
-- config.font = wezterm.font("SauceCodePro Nerd Font", { weight = 400 })
config.font = wezterm.font_with_fallback({
	{ family = "Source Code Pro", weight = 400 },
	{ family = "Symbols Nerd Font", scale = 0.85 },
})
-- config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14
config.line_height = 1.1
config.underline_position = -3

-- Config for minimal window decoration/appearance
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false

config.colors = {
	tab_bar = {
		background = "#000000",
		active_tab = {
			bg_color = "#2b2042",
			fg_color = "#c0c0c0",
			intensity = "Bold",
		},
		inactive_tab = {
			bg_color = "#000000",
			fg_color = "#808080",
		},
		new_tab = {
			bg_color = "#000000",
			fg_color = "#808080",
		},
	},
}

-- Config for new window default size
config.initial_cols = 90
config.initial_rows = 25

-- Config for window paddings
config.window_padding = {
	top = "0.8cell",
	right = "0.8cell",
	bottom = "0.8cell",
	left = "0.8cell",
}
-- Config for inactie pane appearance
config.inactive_pane_hsb = {
	saturation = 0.7,
	brightness = 0.7,
}

-- Use ALT instead of SHIFT to bypass application mouse reporting
config.bypass_mouse_reporting_modifiers = "ALT"

--- See: https://wezfurlong.org/wezterm/config/lua/config/term.html
config.term = "wezterm"

-- use same LEADER as in Tmux
config.leader = { key = " ", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = require("keys")

-- and finally, return the configuration to wezterm
return config
