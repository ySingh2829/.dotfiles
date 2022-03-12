return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'onsails/lspkind-nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'nvim-lualine/lualine.nvim' -- LuaLine
  use 'Mofiqul/dracula.nvim'
  use 'mfussenegger/nvim-dap'
  use 'simrat39/rust-tools.nvim'
  use { "ellisonleao/gruvbox.nvim" }
end)
