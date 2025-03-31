-- globals
local set = vim.keymap.set
local opts = { noremap = true, silent = true }

set("v", "J", ":m '>+1<CR>gv=gv", opts)
set("v", "K", ":m '<-2<CR>gv=gv", opts)
set("n", "<leader>h", ":nohlsearch<CR>", opts)

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
set("v", "<leader>v", '"_d')

set("n", "<leader>pv", ":Ex", { desc = "Go to File explorer" })

set("i", "<C-c>", "<Esc>")
set("n", "Q", "<nop")
set("n", "<C-f>", "<cmd>silent !tmux neww tmuxsessionizer<CR>")

-- set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- set("n", "<leader>x", "<cmd>!chmod +x %<CR>", opts)

-- Increment/decrement
set("n", "+", "<C-a>")
set("n", "-", "<C-x>")

-- When we delete text in normal mode or visual mode using c, d or x that text goes to a register.
-- This affects the text we paste with the keybinding p.
-- What this do is modify x and X to delete text without changing the internal registers.
set({ "n", "x" }, "x", '"_x')
set({ "n", "x" }, "X", '"_d')

-- quickfix navigation
set("n", "<leader>j", "<cmd>lnext<CR>zz")
set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- plugins
-- neo tree
-- set("n", "<C-e>", ":Neotree toggle<CR>", opts)

set({ "v", "n" }, "grn", function()
	vim.lsp.buf.rename()
end, { noremap = true, silent = true, desc = "Code Rename" })

local builtin = require("telescope.builtin")

-- Key mappings for Telescope functions
vim.keymap.set("n", "<leader>fg", require("custom.telescope.multigrep"))
vim.keymap.set("n", "<leader>p", builtin.find_files, {})
vim.keymap.set("n", "<C-g>f", builtin.git_files, {})
vim.keymap.set("n", "<leader>/", builtin.live_grep, {})
vim.keymap.set("n", "<leader>f", builtin.grep_string, {})
vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>b", builtin.buffers, {})
vim.keymap.set("n", "<leader>pd", builtin.diagnostics, {})
-- vim.keymap.set("n", "gri", builtin.lsp_implementations, {})
-- vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "Goto Definition" })
vim.keymap.set("n", "grr", builtin.lsp_references, {})
vim.keymap.set("n", "<C-g>c", builtin.git_commits, {})
vim.keymap.set("n", "<C-g>bc", builtin.git_bcommits, {})
vim.keymap.set("v", "<leader>s", builtin.spell_suggest, {})
vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
vim.keymap.set("n", "<leader>m", builtin.marks, {})
vim.keymap.set("n", "<leader>k", builtin.keymaps, {})
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
vim.keymap.set("n", "<C-g>s", builtin.git_status, {})
vim.keymap.set("n", "<space>en", function()
	builtin.find_files({
		cwd = vim.fn.stdpath("config"),
	})
end)

set("n", "<leader>dd", ":lua vim.diagnostic.open_float() <CR>", { desc = "toggles local troubleshoot" })

-- open file_browser with the path of the current buffer
set(
	"n",
	"<space>e",
	":Telescope file_browser path=%:p:h select_buffer=true<CR>",
	{ desc = "open file_browser with the path of the current buffer" }
)
