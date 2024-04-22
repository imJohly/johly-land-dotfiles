vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    -- gitsigns
    use ( 'lewis6991/gitsigns.nvim' )

	-- Fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    -- Treesitter
    use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- LSPzero
    use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment these if you want to manage the language servers from neovim
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}

    -- Theming
    use { 'shaunsingh/nord.nvim' }

    -- Statusline
    use { 'nvim-lualine/lualine.nvim' }
    -- Easy Commenting
    use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

    -- Better Escape
    use {
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup({
				mapping = {"jk", "jj"},
                timeout = vim.o.timeoutlen,
                clear_empty_lines = true,
				keys = "<Esc>",
			})
		end,
	}


    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use { 'nvim-tree/nvim-tree.lua' }
	use { 'romgrk/barbar.nvim' }
    use { 'nvim-tree/nvim-web-devicons' }
    use { 'lewis6991/gitsigns.nvim' }

    -- Allows for selections to be surrounded with characters
    use { 'machakann/vim-sandwich' }

    -- Allows terminal window to be toggled
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    use { "petertriho/nvim-scrollbar" }

end)
