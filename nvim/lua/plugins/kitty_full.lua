local kitty_padding_group = vim.api.nvim_create_augroup("KittyPadding", { clear = true })

-- 1. Zera o padding ao entrar no Neovim
vim.api.nvim_create_autocmd("VimEnter", {
  group = kitty_padding_group,
  pattern = "*",
  callback = function()
    -- Se estiver usando o Kitty, altera o padding da janela atual para 0
    if os.getenv("TERM") == "xterm-kitty" or os.getenv("KITTY_PID") then
      vim.fn.system("kitty @ set-spacing padding=0")
    end
  end,
})

-- 2. Restaura o padding para 14 ao fechar o Neovim
vim.api.nvim_create_autocmd("VimLeavePre", {
  group = kitty_padding_group,
  pattern = "*",
  callback = function()
    if os.getenv("TERM") == "xterm-kitty" or os.getenv("KITTY_PID") then
      -- vim.fn.system("kitty @ set-spacing padding=0")

      -- Exemplo assíncrono (opcional, substitui a linha do vim.fn.system):
      vim.fn.jobstart("kitty @ set-spacing padding=0")
    end
  end,
})

-- IMPORTANTE: Retorna uma tabela vazia para o lazy.nvim não reclamar
return {}
