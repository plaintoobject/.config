-- colorscheme

return {
  "vague2k/vague.nvim",
  lazy = false,
  priority = 1000,
  opts = function()
    return require("custom.plugins.colorscheme")
  end
}
