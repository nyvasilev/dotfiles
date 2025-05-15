local opt = vim.opt

opt.wildmenu = true
opt.wildmode = { "longest:full", "full" }
-- Hide the netrw banner
vim.g.netrw_banner = 0

-- Set list style (0=thin, 1=long, 2=wide, 3=tree)
vim.g.netrw_liststyle = 3

-- Open splits to the right/bottom
vim.g.netrw_browse_split = 4

-- Open vertical splits to the right
vim.g.netrw_altv = 1

-- Sorting by time (custom sort sequence)
vim.g.netrw_sort_sequence = [[[\/]$,*,\.bak$,\.o$,\.h$,\.info$,\.swp$,\.obj$]]

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
vim.o.lazyredraw = true
