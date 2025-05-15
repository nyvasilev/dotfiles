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
				ensure_installed = {
					"lua_ls",
					"html",
					"cssls",
					"eslint",
					"ts_ls",
					"jsonls",
					"svelte",
					"harper_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "saghen/blink.cmp" },
			{
				"folke/lazydev.nvim",
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
				svelte = {},
				harper_ls = {},
			},
		},
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig["lua_ls"].setup({ capabilities = capabilities })
			require("lspconfig").ts_ls.setup({
				capabilities = capabilities,
				on_attach = function(client)
					client.server_capabilities.document_formatting = false
				end,
			})
			lspconfig["html"].setup({ capabilities = capabilities })
			lspconfig["cssls"].setup({ capabilities = capabilities })
			lspconfig["eslint"].setup({ capabilities = capabilities })
			lspconfig["jsonls"].setup({ capabilities = capabilities })
			lspconfig["emmet_ls"].setup({ capabilities = capabilities })
			lspconfig["svelte"].setup({ capabilities = capabilities })

			-- lspconfig["harper_ls"].setup({
			-- 	capabilities = capabilities,
			-- 	filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
			-- 	settings = {
			-- 		["harper-ls"] = {
			-- 			userDictPath = "",
			-- 			fileDictPath = "",
			-- 			linters = {
			-- 				SpellCheck = true,
			-- 				SpelledNumbers = false,
			-- 				AnA = true,
			-- 				SentenceCapitalization = true,
			-- 				UnclosedQuotes = true,
			-- 				WrongQuotes = false,
			-- 				LongSentences = true,
			-- 				RepeatedWords = true,
			-- 				Spaces = true,
			-- 				Matcher = true,
			-- 				CorrectNumberSuffix = true,
			-- 			},
			-- 			codeActions = {
			-- 				ForceStable = true,
			-- 			},
			-- 			markdown = {
			-- 				IgnoreLinkTitle = false,
			-- 			},
			-- 			diagnosticSeverity = "hint",
			-- 			isolateEnglish = true,
			-- 		},
			-- 	},
			-- })
		end,
	},
}
