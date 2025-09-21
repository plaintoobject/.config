-- options
local opt = vim.opt

opt.winborder = "rounded"
opt.number = true
opt.relativenumber = true
-- opt.cursorline = true -- already we set in the cmd.lua file
opt.termguicolors = true
opt.signcolumn = "yes"
opt.wrap = false

opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true
opt.smartindent = true

opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.clipboard = "unnamedplus"
opt.undofile = true
opt.swapfile = false
opt.backup = false
opt.guicursor = "a:block"
