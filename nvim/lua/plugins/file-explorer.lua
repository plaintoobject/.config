-- oil (file explorer)

return {
  "stevearc/oil.nvim",
  lazy = false,
  init = function()
    return require("custom.plugins.file-explorer")
  end
}
