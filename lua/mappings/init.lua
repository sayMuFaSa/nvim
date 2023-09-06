vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- vim.g.fzf_preview_window = { 'right:30%:wrap', 'ctrl-/:wrap' }

-- vim.g.fzf_default_opt = '--exact'

-- local command = (":FZF --exact --border-label=Files --preview=echo\\ {}\\ |\\ xargs\\ -o\\ vim")

-- vim.api.nvim_create_user_command("FINDIT", command, {})

-- Depends on the Telescope plugin
-- vim.keymap.set('n', "<leader>ff", vim.cmd.FINDIT, {})


vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})



