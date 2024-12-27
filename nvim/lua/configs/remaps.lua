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

set("i", "<C-c>", "<Esc>")
set("n", "Q", "<nop")
set("n", "<C-f>", "<cmd>silent !tmux neww tmuxsessionizer<CR>")

set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
set("n", "<leader>x", "<cmd>!chmod +x %<CR>", opts)

-- Increment/decrement
set("n", "+", "<C-a>")
set("n", "-", "<C-x>")

-- quickfix navigation
set("n", "<leader>j", "<cmd>lnext<CR>zz")
set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- plugins

-- neo tree
set("n", "<C-n>", ":Neotree toggle<CR>", opts)

-- figutive
set("n", "<C-g>s", ":below Git status<CR>")
