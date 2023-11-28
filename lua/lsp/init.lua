local lspconfig = require'lspconfig'
lspconfig.clangd.setup {
  -- init_options = {
  --   compilationDatabaseDirectory = "build";
  --   index = {
  --     threads = 0;
  --   };
  --   clang = {
  --     excludeArgs = { "-frounding-math"} ;
  --   };
  -- }
}

lspconfig.texlab.setup{}

local lsp = require('lsp-zero')

lsp.preset("recommended")
local cmp = require("cmp")

local cmp_select = {behavior = cmp.SelectBehavior.Select}

local cmp_mappings = lsp.defaults.cmp_mappings({
	["<CR>"] = cmp.mapping.confirm({ select = true }),
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)

end)



lsp.setup()
