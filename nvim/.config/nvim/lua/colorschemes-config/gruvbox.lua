vim.opt.termguicolors = true
vim.o.background = "dark" -- or "light" for light mode
vim.g.gruvbox_bold = '0'
vim.cmd([[colorscheme gruvbox]])
vim.cmd([[highlight Visual gui=reverse guifg=none guibg=none]])
