return {
	theme = {
		background = "dark", -- Set to "dark" or "light" based on your preference
		colors = {
			file = "#ebdbb2", -- Foreground color
			directory = "#458588", -- Blue
			symlink = "#689d6a", -- Aqua
			executable = "#98971a", -- Green
			selected = "#d79921", -- Yellow
			border = "#282828", -- Background
			background = "#282828", -- Background
			text = "#ebdbb2", -- Foreground color for text
			error = "#cc241d", -- Red
		},
	},
	options = {
		enable_icons = true, -- Use Nerd Fonts for icons
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
