require('plugins')
require('lsp')
require('mappings')
require('treesiter')
require('comment')
require('nvim_tree')


local diffview = require('diffview')
local autopairs = require('nvim-autopairs')
local default_scheme = 'neodark'
local terminal = require('toggleterm')

diffview.setup()
autopairs.setup()
terminal.setup({
	open_mapping = '<c-Tab>',
	insert_mappings = true,
	terminal_mappings = true
})


vim.o.termguicolors = true
vim.cmd.colorscheme(default_scheme)
vim.cmd('hi Normal guibg=#1e2226')
vim.cmd('hi NvimTreeNormal guibg=#1e2226')

vim.cmd('set number')
vim.cmd('set scrolloff=3')
vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set numberwidth=1')

vim.cmd[[autocmd VimEnter,InsertEnter * set guicursor=n-v-c:block-Cursor]]

-- local argc = vim.fn.argc()
--
-- if argc == 0 then
-- 	local nvim_tree = require('nvim-tree.api')
-- 	nvim_tree.tree.toggle()
-- 	vim.cmd('close')
-- end
