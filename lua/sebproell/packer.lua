-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'nvim-tree/nvim-tree.lua'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'theprimeagen/harpoon'

    -- themes
    use {
        'folke/tokyonight.nvim', as = 'tokyonight',
    }

    use { "catppuccin/nvim", as = "catppuccin",
        config = function()
            vim.cmd('colorscheme catppuccin-mocha')
        end
    }

    use 'nvim-tree/nvim-web-devicons'

    -- why is this not bundled??
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end, }

    use {
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
        requires = "nvim-treesitter/nvim-treesitter",
    }

    use("mbbill/undotree")
    use("tpope/vim-fugitive")

    use("karb94/neoscroll.nvim")

    -- Git integration in gutter
    use("lewis6991/gitsigns.nvim")

    -- CMake
    use 'Civitasv/cmake-tools.nvim'

    -- Quickfix replacements
    use 'gabrielpoca/replacer.nvim'

    -- errors and warning in separate buffer
    use { 'folke/trouble.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use "b0o/schemastore.nvim"

    use 'github/copilot.vim'

    use { 'kylechui/nvim-surround' }

    use {
        "m4xshen/hardtime.nvim",
        requires = { 'MunifTanjim/nui.nvim', "nvim-lua/plenary.nvim" }
    }

    -- LSP setup
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
end)
