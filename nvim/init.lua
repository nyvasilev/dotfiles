vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- install lazy.vim plugin manager
require("lazy-init")

-- configure plugins
require("lazy-plugins")

-- settings options
require("configs.options")

-- custom scripts
require("configs.utils")

-- basic keymaps
require("configs.remaps")
