local capabilities = require('blink.cmp').get_lsp_capabilities()
local lsp = vim.lsp

lsp.config("lua_ls", {
  capabilities = capabilities
})

lsp.config("ts_ls", {
  capabilities = capabilities
})

lsp.config("rust_analyzer", {
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
      diagnostics = {
        enable = false,
      }
    }
  }
})

lsp.config("svelte", {
  capabilities = capabilities
})

lsp.config("tinymist", {
  capabilities = capabilities
})

lsp.config("clangd", {
  capabilities = capabilities
})

lsp.enable({
  "lua_ls",
  "ts_ls",
  "rust_analyzer",
  "svelte",
  "tinymist",
  "clangd"
})

vim.diagnostic.config({
  underline = true,
  virtual_text = false,
  float = {
    border = "rounded"
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = 'e',
      [vim.diagnostic.severity.WARN] = 'w',
      [vim.diagnostic.severity.HINT] = 'h',
      [vim.diagnostic.severity.INFO] = 'i',
    },
  },
  update_in_insert = false
})
