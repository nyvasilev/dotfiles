local opt = vim.opt

opt.background = "dark"
opt.guicursor = ""

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.wrap = true

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true
opt.cursorline = true

opt.termguicolors = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.updatetime = 50

-- opt.wo.number = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.breakindent = true
opt.undofile = true

opt.ignorecase = true
opt.smartcase = true

opt.timeoutlen = 300
opt.completeopt = { "menu", "menuone", "noselect" }
opt.laststatus = 3

-- ui
opt.showmatch = true
opt.shortmess:append("sI")
opt.cmdheight = 1
opt.signcolumn = "auto:2"
opt.synmaxcol = 512
opt.list = true

opt.foldmethod = "expr" -- Use Tree-sitter or another expression for folds
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = true -- Start with folds enabled
opt.foldlevel = 99 -- Open all folds by default
opt.foldcolumn = "1"
