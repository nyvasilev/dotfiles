local opt = vim.opt

opt.wildmenu = true
opt.wildmode = { "longest:full", "full" }

opt.title = true
opt.autoindent = true
opt.showcmd = true
opt.ai = true
opt.si = true
opt.backspace = "start,eol,indent"
opt.winblend = 0
opt.wildoptions = "pum"
opt.pumblend = 5
opt.background = "dark"
opt.guicursor = ""
opt.nu = true
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.swapfile = false
opt.backup = false
opt.undofile = true
-- opt.hlsearch = false
opt.incsearch = true
opt.cursorline = true
opt.termguicolors = true
opt.scrolloff = 20
opt.signcolumn = "yes"
opt.updatetime = 50
opt.mouse = ""
opt.clipboard = "unnamedplus"
opt.breakindent = true
opt.ignorecase = true
opt.smartcase = true
opt.timeoutlen = 300
opt.completeopt = { "menu", "menuone", "noselect" }
opt.laststatus = 0

-- ui
opt.showmatch = true
-- opt.shortmess:append("sI")
opt.cmdheight = 1
-- opt.signcolumn = "auto:2"
opt.synmaxcol = 512
opt.list = true
vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:▼,foldsep: ,foldclose:►]]
