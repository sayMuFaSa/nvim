require("lsp.mason")
local lsp = require('lsp-zero')

lsp.preset("recommended")
local cmp = require("cmp")

local cmp_select = {behavior = cmp.SelectBehavior.Select}

local cmp_mappings = lsp.defaults.cmp_mappings({
	["<A-f>"] = cmp.mapping.select_next_item(cmp_select),
	["<A-d>"] = cmp.mapping.select_prev_item(cmp_select),
	["<Tab>"] = cmp.mapping.confirm({ select = false }),
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
end)



-- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
