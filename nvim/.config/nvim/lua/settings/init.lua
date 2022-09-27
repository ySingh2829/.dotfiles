local set = vim.opt


set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.smartindent = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 8
set.fileencoding = 'utf-8'
set.termguicolors = true
set.signcolumn = "yes"

set.number = true
set.relativenumber = true
set.hidden = true

--set.guicursor = 'n-v-c-sm:block,ci-ve:ver25,r-cr-o:hor20,i:block-blinkwait700-blinkoff400-blinkon250-Cursor/lCursor'
set.guicursor = ""
set.colorcolumn = "80"

vim.diagnostic.config({virtual_text = false})

--vim.cmd([[au ColorScheme * hi Normal guibg=none]])
