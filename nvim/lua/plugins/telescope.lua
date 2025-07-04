return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local harpoon_add_mark = function(prompt_bufnr)
			local entry = require("telescope.actions.state").get_selected_entry()
			local list = require("harpoon"):list()
			local harpoon_config = list.config
			local item = harpoon_config.create_list_item(harpoon_config, entry[1])
			list:add(item)
		end
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
				mappings = {
					i = {
						["<C-r>"] = harpoon_add_mark,
					},
					n = {
						["<C-r>"] = harpoon_add_mark,
					},
				},
			},
			pickers = {},
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
				},
			},
		})
		require("telescope").load_extension("fzf")
	end,
}
