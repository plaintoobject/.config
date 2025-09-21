-- mason (lsp tool installer)

return {
  "mason-org/mason.nvim",
  opts = function()
    return require("custom.plugins.mason")
  end
}
