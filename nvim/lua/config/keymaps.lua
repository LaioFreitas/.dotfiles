-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<A-S-j>", "yyp", { desc = "duplicalinha para baixo" })
vim.keymap.set("n", "<A-S-k>", ":t -1<cr>", { desc = "duplicalinha para acima" })
-- vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debug: continuar" })
-- vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Debug: step into" })
-- vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Debug: step_over" })
-- vim.keymap.set("n", "<F12>", dap.out, { desc = "Debug: out" })
