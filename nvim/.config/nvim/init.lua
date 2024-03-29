require('settings')
require('mappings')
--require('colorschemes-config.zenburn')
require('colorschemes-config.gruvbox')
--require('colorschemes-config.dracula')
--require('colorschemes-config.solarized')
--require('colorschemes-config.ayu')
--require('colorschemes-config.vim-one')
--require('colorschemes-config.one-half')
require('packer-config')
require('mason-config')
require('lsp-config.language-servers')
require('lsp-config.nvim-cmp')
require('treesitter-config')
require('telescope-config')
require('lualine-config')
require('dbg')
require("luasnip.loaders.from_vscode").lazy_load()
