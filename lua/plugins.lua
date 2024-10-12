return {
    'wbthomason/packer.nvim',

    'savq/melange-nvim',

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    "nvim-treesitter/nvim-treesitter", 
    -- LSP zero setup
    {'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    -- Mason for installing lsps etc.
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    -- These optional plugins should be loaded directly beca of a bug in Packer lazy loading
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status

    'romgrk/barbar.nvim',
    'nvim-tree/nvim-tree.lua',
    'akinsho/toggleterm.nvim',
    'lervag/vimtex',

    'm4xshen/autoclose.nvim',
    'nvim-lualine/lualine.nvim',
    { 
        'zbirenbaum/copilot-cmp',
        dependencies={'copilot.lua'}
    },
    'zbirenbaum/copilot.lua'
}
