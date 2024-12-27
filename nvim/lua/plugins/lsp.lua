return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = { auto_install = true },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "html", "cssls", "eslint", "ts_ls", "jsonls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "saghen/blink.cmp" },
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		opts = {
			servers = {
				lua_ls = {},
				html = {},
				cssls = {},
				eslint = {},
				ts_ls = {},
				jsonls = {},
			},
		},
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig["lua_ls"].setup({ capabilities = capabilities })
			lspconfig["lua_ls"].setup({ capabilities = capabilities })
			lspconfig["ts_ls"].setup({ capabilities = capabilities })
			lspconfig["html"].setup({ capabilities = capabilities })
			lspconfig["cssls"].setup({ capabilities = capabilities })
			lspconfig["eslint"].setup({ capabilities = capabilities })
			lspconfig["jsonls"].setup({ capabilities = capabilities })

			vim.keymap.set("n", "grn", require("vim.lsp.buf").rename)
			vim.keymap.set("v", "gra", require("vim.lsp.buf").code_action)
			-- vim.keymap.set("n", "grr", require("vim.lsp.buf").references, {})
			-- vim.keymap.set("n", "gri", require("vim.lsp.buf").implementation, {})
			vim.keymap.set("i", "<C-s>", require("vim.lsp.buf").signature_help)
		end,
	},
}
