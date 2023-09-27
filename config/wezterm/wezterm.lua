-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "AdventureTime"

-- Config related to text font and text rendering
config.font = wezterm.font("SauceCodePro Nerd Font", { weight = 400 })
-- config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14
config.line_height = 1.1
config.underline_position = -3

-- Config for minimal window decoration/appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
-- Config for new window default size
config.initial_cols = 90
config.initial_rows = 25
-- Config for window paddings
config.window_padding = {
	top = "0.3cell",
	right = "0.5cell",
	bottom = "0.3cell",
	left = "0.5cell",
}

-- Config for window paddings
config.window_padding = {
	top = "0.3cell",
	right = "0.5cell",
	bottom = "0.3cell",
	left = "0.5cell",
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
