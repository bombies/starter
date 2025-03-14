require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
	"html",
	"cssls",
	"clangd",
	"jsonls",
	"tailwindcss",
	"tsserver",
	"eslint",
	"pylsp",
	"jdtls",
	"prismals",
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
