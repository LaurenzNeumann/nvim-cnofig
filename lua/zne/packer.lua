vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'savq/melange-nvim'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {"nvim-treesitter/nvim-treesitter", run=':TSUpdate'} 
  -- LSP zero setup
  use{'VonHeikemen/lsp-zero.nvim', branch = 'v4.x', after={'copilot.lua'}}
  use{'neovim/nvim-lspconfig'}
  use{'hrsh7th/nvim-cmp'}
  use{'hrsh7th/cmp-nvim-lsp'}
  -- Mason for installing lsps etc.
  use {'williamboman/mason.nvim'}
  use {'williamboman/mason-lspconfig.nvim'}
  -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status

  use 'romgrk/barbar.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'akinsho/toggleterm.nvim'
  use 'lervag/vimtex'

  use 'm4xshen/autoclose.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'zbirenbaum/copilot.lua'
  use { 
    'zbirenbaum/copilot-cmp',
    after={'copilot.lua'}
    }
end)
