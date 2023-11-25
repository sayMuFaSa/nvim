vim.cmd("packadd packer.nvim")

return require('packer').startup(function(use)
	-- Packer can manage itself
	use {'wbthomason/packer.nvim'}

	use {"folke/tokyonight.nvim", as = "tokyonight" }

	-- use {
	-- 	'VonHeikemen/lsp-zero.nvim',
	-- 	branch = 'v2.x',
	-- 	requires = {
	-- 		-- LSP Support
	-- 		{'neovim/nvim-lspconfig'},             -- Required
	--
	-- 		-- Autocompletion
	-- 		{'hrsh7th/nvim-cmp'},     -- Required
	-- 		{'hrsh7th/cmp-nvim-lsp'}, -- Required
	-- 		{'L3MON4D3/LuaSnip'},     -- Required
	-- 	}
	-- }

	use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

	use {'decaycs/decay.nvim', as = 'decay'}

	use {"rebelot/kanagawa.nvim", as = 'kanagawa'}

	use { 'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }


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

	use "VDuchauffour/neodark.nvim"

	use 'ptzz/lf.vim'

	use 'nvim-tree/nvim-tree.lua'

	use 'nvim-tree/nvim-web-devicons' -- install nerd-fonts package also 
end)



