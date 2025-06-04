-- globals
local set = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Here is a utility function that closes any floating windows when you press escape
local function close_floating()
	for _, win in pairs(vim.api.nvim_list_wins()) do
		if vim.api.nvim_win_get_config(win).relative == "win" then
			vim.api.nvim_win_close(win, false)
		end
	end
end

set("v", "J", ":m '>+1<CR>gv=gv", opts)
set("v", "K", ":m '<-2<CR>gv=gv", opts)

set("n", "J", "mzJ`z")
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

set("n", "<leader>w", ":w<CR>")
set("n", "<leader>q", ":bd<CR>")

set("x", "<leader>p", '"_dP')
set({ "n", "v" }, "<leader>y", '"+y', { desc = "copy to clipboard" })

set("n", "<leader>d", '"_d')

-- plugins
-- files
set("n", "<C-p>", "<cmd>FzfLua files<CR>")
set("n", "<C-\\>", "<cmd>FzfLua buffers<CR>")
set("n", "<C-g>", "<cmd>FzfLua grep<CR>")
set("n", "<C-l>", "<cmd>FzfLua live_grep_native<CR>")
set("n", "<C-k>", "<cmd>FzfLua builtin commands<CR>")
set("n", "<C-f>", "<cmd>FzfLua grep_cword<CR>")
set("n", "<C-z>", "<cmd>FzfLua zoxide<CR>")

-- git files
set("n", "<C-g>l", "<cmd>FzfLua git_blame<CR>", { desc = "git blame buffer" })
set("n", "<C-g>b", "<cmd>FzfLua git_branches<CR>")
set("n", "<C-g>c", "<cmd>FzfLua git_commits<CR>", { desc = "commit log project" })
set("n", "<C-g>bc", "<cmd>FzfLua git_bcommits<CR>", { desc = "commi log buffer" })
set("n", "<C-g>s", "<cmd>FzfLua git_status<CR>")
set("n", "<C-g>h", "<cmd>FzfLua git_hunks<CR>")

-- lsp
set("n", "K", vim.lsp.buf.hover, opts)
set("n", "grr", "<cmd>FzfLua lsp_references<CR>", { desc = "references for word under cursor" })
set("n", "gd", "<cmd>FzfLua lsp_definitions<CR>")
set("n", "gD", "<cmd>FzfLua lsp_declarations<CR>")
set("n", "gra", "<cmd>FzfLua lsp_code_actions<CR>")
set("n", "<C-c>d", "<cmd>FzfLua diagnostics_workspace<CR>")
set({ "v", "n" }, "grn", function()
	vim.lsp.buf.rename()
end, { noremap = true, silent = true, desc = "Code Rename" })

vim.keymap.set("i", "<C-s>", require("vim.lsp.buf").signature_help)

set("n", "<C-c>l", function()
	vim.diagnostic.open_float()
end, { desc = "Line Diagnostics" })

set("n", "<C-g>p", ":Gitsigns preview_hunk<cr>", { desc = "Git preview hunk" })

set("n", "<Leader>u", ":Lazy update<CR>", { desc = "Lazy Update (Sync)" })
set("n", "<Leader>n", "<cmd>enew<CR>", { desc = "New File" })
set("n", "<Leader>a", "ggVG<c-$>", { desc = "Select All" })

set("n", "<esc>", function()
	close_floating()
	vim.cmd(":noh")
end, { silent = true, desc = "Remove Search Highlighting, Dismiss Popups" })
