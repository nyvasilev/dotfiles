local M = {
	theme = {
		background = "dark",
		colors = {
			file = "#ebdbb2",
			directory = "#458588",
			symlink = "#689d6a",
			executable = "#98971a",
			selected = "#d79921",
			border = "#282828",
			background = "#282828",
			text = "#ebdbb2",
			error = "#cc241d",
		},
	},
	options = {
		enable_icons = true,
		show_hidden_files = true,
	},
	keymap = {
		quit = "q",
		up = "k",
		down = "j",
		open = "l",
		back = "h",
		toggle_hidden_files = ".",
	},
}

local opener = require("opener")

opener:add("*.mp4", {
	desc = "Play with mpv",
	block = true,
	orphan = true,
	run = function(path)
		os.execute("mpv " .. string.format("%q", path))
	end,
})

opener:add("*.mkv", {
	desc = "Play with mpv",
	block = true,
	orphan = true,
	run = function(path)
		os.execute("mpv " .. string.format("%q", path))
	end,
})

return M
