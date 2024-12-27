return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "javascript", "typescript", "tsx", "html", "css" },
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			indent = { endable = true },
			incremental_selection = { enable = true },
			texttoobject = { enable = true },
		})
	end,
}
