-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Use spelling for markdown files ‘]s’ to find next, ‘[s’ for previous, 'z=‘ for suggestions when on one.
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "html", "markdown", "text", "typescriptreact", "typescript" },
	callback = function()
		vim.opt_local.spell = true
	end,
})

vim.api.nvim_create_user_command("ShowPath", function()
	print(vim.fn.expand("%:p"))
end, {})
