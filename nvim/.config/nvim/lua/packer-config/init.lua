return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Treesitter Plugin
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-context'

  -- Telescope plugin
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
  -- FZF sorter for telescope
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Fuzzy finder plugin
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  -- LSP configurations plugins
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use "williamboman/mason.nvim"
  use {
      "williamboman/mason-lspconfig.nvim",
      require("mason-lspconfig").setup({
          ensure_installed = {
              "sumneko_lua",
              "rust_analyzer",
              "tsserver",
              "pyright",
              "gopls",
              "clangd",
          }
      })
  }
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use({'L3MON4D3/LuaSnip' , tag = "v<CurrentMajor>.*"}) -- Snippets plugin
  use 'nvim-lualine/lualine.nvim' -- LuaLine
  use 'rafamadriz/friendly-snippets' -- friendly snippets

  -- Linting and formatting
  use { 'jose-elias-alvarez/null-ls.nvim' }

  -- Diagnostics
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }

  -- Debugging plugins
  use {'mfussenegger/nvim-dap'} -- Debugger
  use {'nvim-telescope/telescope-dap.nvim'}
  use {'mfussenegger/nvim-dap-python'}
  use {'theHamsta/nvim-dap-virtual-text'}
  use {'rcarriga/nvim-dap-ui'}

  -- Rust tools for rust analyzer
  use 'simrat39/rust-tools.nvim'

  -- Colorschemes plugins
  use { "morhetz/gruvbox" }  -- Colorscheme gruvbox
  use 'Mofiqul/dracula.nvim' -- Colorscheme dracula
  use 'lifepillar/vim-solarized8'  -- Colorscheme solarized
  use 'ayu-theme/ayu-vim'       -- Colorscheme ayu
  use 'rakr/vim-one'            -- Colorscheme vim-one
  use 'franbach/miramare'       -- Colorscheme Miramare

  -- Vit Fugitive
  use 'tpope/vim-fugitive'

end)
