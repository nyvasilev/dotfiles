return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			local builtin = require("telescope.builtin")

			-- Key mappings for Telescope functions
			vim.keymap.set("n", "<space>fg", require("custom.telescope.multigrep"))
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<C-g>f", builtin.git_files, {})
			vim.keymap.set("n", "<C-l>", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
			vim.keymap.set("n", "<C-\\>", builtin.buffers, {})
			vim.keymap.set("n", "<leader>pd", builtin.diagnostics, {})
			vim.keymap.set("n", "gri", builtin.lsp_implementations, {})
			vim.keymap.set("n", "grr", builtin.lsp_references, {})
			vim.keymap.set("n", "<C-g>c", builtin.git_commits, {})
			vim.keymap.set("n", "<C-g>bc", builtin.git_bcommits, {})
			vim.keymap.set("n", "<space>en", function()
				builtin.find_files({
					cwd = vim.fn.stdpath("config"),
				})
			end)

			require("telescope").setup({
				defaults = {
					layout_strategy = "bottom_pane",
					sorting_strategy = "ascending",
					layout_config = {
						height = 0.8,
						width = 0.8,
						prompt_position = "top",
						preview_width = 0.4,
					},
					mappings = {},
				},
				pickers = {
					-- find_files = { theme = "ivy" },
					-- git_files = { theme = "ivy" },
					-- live_grep = { theme = "ivy" },
					-- help_tags = { theme = "ivy" },
					-- buffers = { theme = "ivy" },
					-- lsp_definitions = { theme = "ivy" },
					-- lsp_references = { theme = "ivy" },
					-- git_commits = { theme = "ivy" },
					-- git_bcommits = { theme = "ivy" },
				},
				extensions = {
					fzf = {
						fuzzy = true, -- false will only do exact matching
						override_generic_sorter = true, -- override the generic sorter
						override_file_sorter = true, -- override the file sorter
					},
				},
			})
			-- To get fzf loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("fzf")
		end,
	},
}
