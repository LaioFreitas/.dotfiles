-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<A-S-j>", "yyp", { desc = "duplicalinha para baixo" })
vim.keymap.set("n", "<A-S-k>", ":t -1<cr>", { desc = "duplicalinha para acima" })
