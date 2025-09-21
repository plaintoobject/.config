local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- highlight yank
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 200 }
  end,
})

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

-- auto restore last cursor position
autocmd("BufReadPost", {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- autoclose buf, help, man, etc. with "q" key
autocmd("FileType", {
  pattern = { "qf", "help", "man", "lspinfo" },
  callback = function()
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = true })
  end,
})
