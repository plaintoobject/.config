-- keymaps
local map = vim.keymap.set

map("n", "<leader>q", "<cmd> q <CR>", { desc = "quit" })
map("n", "<leader>w<CR>", "<cmd> w <CR>", { desc = "save" })
map("n", "<leader>wq", "<cmd> wq <CR>", { desc = "save & quit" })
map("n", "<leader>Q", "<cmd> qa! <CR>", { desc = "force quit" })

map("n", "<leader>e", "<cmd> Oil <CR>", { silent = true, desc = "open tree" })
map("n", "<leader>ff", "<cmd> Pick files <CR>", { desc = "find files" })
map("n", "<leader>bf", "<cmd> Pick buffers <CR>", { desc = "list current buffers" })

map("n", "<leader>ff", "<cmd> Pick files <CR>", { desc = "pick files" })
map("n", "<leader>bf", "<cmd> Pick buffers <CR>", { desc = "pick buffers" })
map("n", "<leader>bn", "<cmd> bnext <CR>", { silent = true, desc = "goto next buffer" })
map("n", "<leader>bp", "<cmd> bprevious <CR>", { silent = true, desc = "goto previous buffer" })
map("n", "u", "<cmd> undo <CR>", { silent = true })
map("n", "r", "<cmd> redo <CR>", { silent = true })

map("n", "<leader><ESC>", require("mini.bufremove").delete, { desc = "remove current buffer" })

map("n", "<leader>ds", vim.diagnostic.open_float, { desc = "show diagnostic" })
map("n", "<leader>dj", function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "paginate diagnostic" })
map("n", "<leader>dv", function()
  vim.diagnostic.config({ virtual_text = not vim.diagnostic.config().virtual_text })
end, { desc = "toggle diagnostics virtual text" })

map("n", "C-h", "<cmd> TmuxNavigateLeft <CR>", { desc = "navigate window left" })
map("n", "C-l", "<cmd> TmuxNavigateRight <CR>", { desc = "navigate window left" })
map("n", "C-j", "<cmd> TmuxNavigateDown <CR>", { desc = "navigate window left" })
map("n", "C-k", "<cmd> TmuxNavigateTop <CR>", { desc = "navigate window left" })

map("n", "<leader>v", "<cmd>e $MYVIMRC <CR>", { desc = "edit config file" })
map("n", "<leader>z", "<cmd> e ~/.zshrc <CR>", { desc = "edit bash config" })

map({ "n", "v" }, "<leader>so", ":update<CR> :source<CR>", { silent = true, desc = "reload config file" })
