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
set("n", "<C-p>", "<cmd>Telescope find_files<CR>")
set("n", "<C-\\>", "<cmd>Telescope buffers<CR>")
set("n", "<C-l>", "<cmd>Telescope live_grep<CR>")
set({ "n", "v" }, "<C-f>", "<cmd>Telescope grep_string<cr>")

-- git files
set("n", "<C-g>c", "<cmd>Telescope git_commits<CR>", { desc = "git commits" })
set("n", "<C-g>bc", "<cmd>Telescope git_bcommits<CR>")
set("n", "<C-g>s", "<cmd>Telescope git_status<CR>")
set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- lsp
set("n", "K", vim.lsp.buf.hover, opts)
set("n", "grr", "<cmd>Telescope lsp_references<CR>")
set("n", "gd", "<cmd>Telescope lsp_definitions<CR>")
set("n", "gD", "<cmd>Telescope lsp_implementations<CR>")
set("n", "<C-c>d", "<cmd>Telescope diagnostics<CR>")
set({ "v", "n" }, "grn", function()
	vim.lsp.buf.rename()
end, { noremap = true, silent = true, desc = "Code Rename" })

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

set("n", "zU", "<cmd>lua require('ufo').openAllFolds()<CR>", { desc = "Open all folds" })
set("n", "zu", "<cmd>lua require('ufo').closeAllFolds()<CR>", { desc = "Close all folds" })
set("n", "zp", "<cmd>lua require('ufo').peekFoldedLinesUnderCursor()<CR>", { desc = "Peek fold under cursor" })
set("n", "<leader>dv", "<cmd>:DiffviewOpen<CR>", { desc = "Resolve conflicts with diff view" })
