-- lsp

return {
  "neovim/nvim-lspconfig",
  dependencies = { "saghen/blink.cmp" },
  config = function()
    return require("custom.plugins.lsp");
  end,
}
