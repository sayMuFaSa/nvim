require("lsp.mason")
local lsp = require('lsp-zero')

lsp.preset("recommended")
local cmp = require("cmp")

local cmp_select = {behavior = cmp.SelectBehavior.Select}

local cmp_mappings = lsp.defaults.cmp_mappings({
	["<Tab>"] = cmp.mapping.select_next_item(cmp_select),
	["<A-u>"] = cmp.mapping.select_prev_item(cmp_select),
	["<A-y>"] = cmp.mapping.confirm({ select = false }),
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
