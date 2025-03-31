return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			autotag = {
				enable = true,
				filetypes = {
					"html",
					"javascript",
					"typescript",
					"markdown",
				},
			},
			spellsitter = {
				enable = true,
				-- Including identifiers will check variable names
				identifiers = true,
			},
			ensure_installed = {
				"lua",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"vim",
			},
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			indent = { endable = true },
			incremental_selection = { enable = true },
			texttoobject = { enable = true },
		})
	end,
}
