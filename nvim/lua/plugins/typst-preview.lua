return {
  'chomosuke/typst-preview.nvim',
  lazy = false, -- or ft = 'typst'
  version = '1.*',
  opts = function()
    return require("custom.plugins.typst-preview")
  end
}
