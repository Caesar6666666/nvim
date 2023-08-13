return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'Mofiqul/vscode.nvim'
    use 'folke/tokyonight.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- indent-blankline
    use("lukas-reineke/indent-blankline.nvim")
    --UI improve
    use("onsails/lspkind-nvim")
    use("tami5/lspsaga.nvim")
    --lualine
    use { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
}
-- telescope
use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
}
-- telescope extensions
use("LinArcX/telescope-env.nvim")
use("nvim-telescope/telescope-ui-select.nvim")
-- lspconfig
use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}
use "simrat39/rust-tools.nvim"
-- FTerm
use "numToStr/FTerm.nvim"
--copilot
use 'github/copilot.vim'
-- nvim-cmp
use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
use 'hrsh7th/cmp-path'     -- { name = 'path' }
use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
use 'hrsh7th/nvim-cmp'
-- vsnip
use 'hrsh7th/cmp-vsnip' -- { name = 'vsnip' }
use 'hrsh7th/vim-vsnip'
--use 'rafamadriz/friendly-snippets'

-- debug
use 'theHamsta/nvim-dap-virtual-text'
use 'jay-babu/mason-nvim-dap.nvim'
use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
-- bufferline
use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
-- treesitter
use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)
