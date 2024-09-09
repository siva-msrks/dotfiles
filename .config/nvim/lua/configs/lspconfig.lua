local nvlsp = require("nvchad.configs.lspconfig")
local lspconfig = require("lspconfig")

-- lsps with default config
local default_config_servers = { "bashls", "cssls", "clangd", "html" }

for _, lsp in ipairs(default_config_servers) do
  lspconfig[lsp].setup({
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end

-- lsps with modified config
lspconfig.servers = { "pyright" }

lspconfig.pyright.setup({
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off", -- Disable type checking diagnostics
      },
    },
  },
})
