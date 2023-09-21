vim.cmd("packadd packer.nvim")

return require('packer').startup(function(use)
	-- Packer can manage itself
	use {'wbthomason/packer.nvim'}


	use { "catppuccin/nvim", as = "catppuccin" }

	use {"folke/tokyonight.nvim", as = "tokyonight" }

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

	use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

	use {'decaycs/decay.nvim', as = 'decay'}

	use {'frenzyexists/aquarium-vim', as = 'aquarium'}

	use {"rebelot/kanagawa.nvim", as = 'kanagawa'}

	use { 'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }


	}

	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

	use 'voldikss/vim-floaterm'
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use 'Mofiqul/vscode.nvim'





end)



