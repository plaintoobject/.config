local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- toggle cursorline based on mode
augroup("CursorLineControl", { clear = true })

autocmd("InsertEnter", {
  group = "CursorLineControl",
  callback = function()
    vim.opt_local.cursorline = false
  end,
})

autocmd({ "InsertLeave", "WinEnter" }, {
  group = "CursorLineControl",
  callback = function()
    vim.opt_local.cursorline = true
  end,
})

autocmd("WinLeave", {
  group = "CursorLineControl",
  callback = function()
    vim.opt_local.cursorline = false
  end,
})
