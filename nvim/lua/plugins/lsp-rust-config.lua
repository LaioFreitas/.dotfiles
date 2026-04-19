return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.sources = cmp.config.sources({
      { name = "nvim_lsp", priority = 1000 },
      { name = "luasnip", priority = 750 },
      { name = "bufffer", priority = 500 },
      { name = "path", priority = 250 },
    })
  end,
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      on_attach = function(client, bufnr)
        return require("lazyvim.util").lsp.on.attach(client, bufnr)
      end,
    },
  },
}
