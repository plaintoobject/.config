require("typst-preview").setup({
  port = 8080,
})

vim.keymap.set("n", "<leader>typ", "<cmd> TypstPreview <CR>", { desc = "Tinymist preview" })
vim.keymap.set("n", "<leader>typs", "<cmd> TypstPreviewStop <CR>", { desc = "Tinymist preview" })
