return {
  {
    "folke/snacks.nvim",
    opts = {
      notifier = {
        -- Isso desativa as cores de fundo forçadas e garante que a transparência funcione
        style = "compact", -- Ou "fancy" se preferir, mas "compact" funciona melhor com transparência
      },
      styles = {
        notification = {
          wo = { winblend = 0 }, -- Remove a opacidade cinza nativa
        },
      },
    },
  },
}
