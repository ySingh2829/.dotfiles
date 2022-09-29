-- customize dracula color palette
-- show the '~' characters after the end of buffers
-- use transparent background
--vim.g.dracula_transparent_bg = true
vim.cmd[[colorscheme dracula]]
vim.cmd([[highlight Visual gui=reverse guifg=none guibg=none]])
