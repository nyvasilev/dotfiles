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
set("n", "<C-e>", ":Neotree toggle<CR>", opts)

-- files
set("n", "<C-p>", "<cmd>FzfLua files<CR>")
set("n", "<C-\\>", "<cmd>FzfLua buffers<CR>")
set("n", "<C-g>", "<cmd>FzfLua grep<CR>")
set("n", "<C-l>", "<cmd>FzfLua live_grep<CR>")
set("n", "<C-k>", "<cmd>FzfLua builtin commands<CR>")
set("n", "<C-f>", "<cmd>FzfLua grep_cword<CR>")
-- git files
set("n", "<C-g>l", "<cmd>FzfLua git_blame<CR>")
set("n", "<C-g>b", "<cmd>FzfLua git_branches<CR>")
set("n", "<C-g>c", "<cmd>FzfLua git_commits<CR>")
set("n", "<C-g>bc", "<cmd>FzfLua git_bcommits<CR>")
set("n", "K", vim.lsp.buf.hover, opts)
-- lsp
set("n", "grr", "<cmd>FzfLua lsp_references<CR>", { desc = "references for word under cursor" })
set("n", "gd", "<cmd>FzfLua lsp_definitions<CR>")
set("n", "gD", "<cmd>FzfLua lsp_declarations<CR>")
set("n", "gra", "<cmd>FzfLua lsp_code_actions<CR>", { desc = "" })
set("n", "<C-c>d", "<cmd>FzfLua diagnostics_workspace<CR>")
set({ "v", "n" }, "grn", function()
	vim.lsp.buf.rename()
end, { noremap = true, silent = true, desc = "Code Rename" })

set("n", "<C-c>a", vim.lsp.buf.code_action, {})
set("n", "<C-c>l", function()
	vim.diagnostic.open_float(0, { scope = "line" })
end, { desc = "Line Diagnostics" })

set("n", "<leader>gp", ":Gitsigns preview_hunk<cr>", { desc = "Git preview hunk" })
-- open file_browser with the path of the current buffer
set(
	"n",
	"<space>e",
	":Telescope file_browser path=%:p:h select_buffer=true<CR>",
	{ desc = "open file_browser with the path of the current buffer" }
)
