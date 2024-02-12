-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require('nvim-tree').setup({
  sort_by = 'case_sensitive',
  view = {
    width = 30,
	side = 'right', 
	
  },
  renderer = {
    group_empty = true,
	icons = {
		web_devicons = {
			file = {
				enable = false
			},
			folder = {
				enable = false
			}
		}
	}
  },
  filters = {
    dotfiles = true,
  },

  tab = {
	sync = {
		open = true,
		close = true
	}
  }
})
