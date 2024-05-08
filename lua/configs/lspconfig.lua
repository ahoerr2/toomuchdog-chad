-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "pyright", "bashls", "gopls", "bufls", "jdtls", "texlab", "marksman", "rust_analyzer", "lemminx"}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

-- cmake
lspconfig.cmake.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  cmd = {"cmake-language-server"},
  filetypes = {"cmake"},
  root_dir = lspconfig.util.root_pattern('CMakePresets.json', 'CTestConfig.cmake', '.git', 'build', 'cmake'),
  init_options = { buildDirectory = "build"},
  settings = {},
  single_file_support = true
}

lspconfig.clangd.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = { "c", "cpp", "hpp", "objc", "objcpp", "cuda", },
}
