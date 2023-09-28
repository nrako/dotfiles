local wezterm = require("wezterm")

wezterm.on("update-status", function(window)
	-- "Wed Mar 3 08:14"
	local date = wezterm.strftime("%a %b %-d %H:%M ")

	local bat = ""
	for _, b in ipairs(wezterm.battery_info()) do
		local soc = b.state_of_charge * 100
		local icon = (soc > 50) and "🔋" or "🪫"
		local warning = (soc < 15) and "‼️" or ""

		bat = warning .. icon .. " " .. string.format("%.0f%%", soc)
	end

	window:set_left_status(wezterm.format({
		{ Text = " " .. window:active_workspace() .. " " },
	}))

	window:set_right_status(wezterm.format({
		{ Text = bat .. "   " .. date .. "  " },
	}))
end)
