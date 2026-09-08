return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use para estabilidade
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configurações padrão aqui (se desejar personalizar)
      })
    end,
  },
}
