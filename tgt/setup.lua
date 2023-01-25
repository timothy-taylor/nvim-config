local o = vim.opt

o.nu = true
o.relativenumber = true
o.expandtab = true
o.hlsearch = false
o.incsearch = true
o.smartindent = true
o.wrap = false
o.backup = false
o.cmdheight = 2
o.completeopt = { "menuone", "noselect" }
o.conceallevel = 0
o.fileencoding = "utf-8"
o.termguicolors = true
o.ignorecase = true
o.mouse = "a"
o.pumheight = 10
o.showtabline = 0
o.smartcase = true
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.timeoutlen = 1000
o.undofile = true
o.updatetime = 300
o.writebackup = false
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.number = true
o.numberwidth = 4
o.signcolumn = "yes"
o.scrolloff = 8
o.sidescrolloff = 8

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]]) -- treats kabob-case as one word

-- <leader>
vim.g.mapleader = " "
