return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- Treesitter Plugin
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Fuzzy finder plugin
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

  -- LSP configurations plugins
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'onsails/lspkind-nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'nvim-lualine/lualine.nvim' -- LuaLine

  -- Debugging plugins
  use {'mfussenegger/nvim-dap'} -- Debugger
  use {'nvim-telescope/telescope-dap.nvim'}
  use {'mfussenegger/nvim-dap-python'}
  use {'theHamsta/nvim-dap-virtual-text'}
  use {'rcarriga/nvim-dap-ui'}

  -- Rust tools for rust analyzer
  use 'simrat39/rust-tools.nvim'

  -- Colorschemes plugins
  use { "morhetz/gruvbox" }  --Colorscheme gruvbox
  use 'Mofiqul/dracula.nvim' --Colorscheme dracula

  -- Git Fugitive
  use 'tpope/vim-fugitive'

end)
