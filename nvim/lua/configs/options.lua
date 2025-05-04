local opt = vim.opt

opt.title = true
opt.autoindent = true
opt.showcmd = true
opt.ai = true -- autoident
opt.si = true -- smartindent
opt.backspace = "start,eol,indent"
opt.path:append({ "**" }) -- Finding files - Search down into subfolders
opt.wildignore:append({ "*/node_modules/*" })
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
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.breakindent = true
opt.ignorecase = true
opt.smartcase = true
opt.timeoutlen = 300
opt.completeopt = { "menu", "menuone", "noselect" }
opt.laststatus = 0
-- ui
opt.showmatch = true
opt.shortmess:append("sI")
opt.cmdheight = 1
opt.signcolumn = "auto:2"
opt.synmaxcol = 512
opt.list = true
opt.foldenable = true
opt.foldlevel = 99
opt.foldcolumn = "1"
vim.g.netrw_banner = 0
vim.o.lazyredraw = true
