-- return {
--   "mg979/vim-visual-multi",
--   event = "VeryLazy",
--   init = function()
--     vim.g.VM_maps = {
--       ["Add Cursor Down"] = "<A-DOWN>",
--       ["Add Cursor Up"] = "<A-UP>",
--       ["Select All"] = "<C-S-a>",
--     }
--   end,
-- }
--

-- return {
--   "jake-stewart/multicursor.nvim",
--   branch = "1.0",
--   config = function()
--     local mc = require("multicursor-nvim")
--
--     mc.setup()
--
--     local set = vim.keymap.set
--
--     -- Adicionar cursor acima/abaixo (Suporta os modos Normal e Visual/Select)
--     set({ "n", "x" }, "<A-Up>", function()
--       mc.lineAddCursor(-1)
--     end, { desc = "Adicionar cursor acima" })
--     set({ "n", "x" }, "<A-Down>", function()
--       mc.lineAddCursor(1)
--     end, { desc = "Adicionar cursor abaixo" })
--
--     -- Selecionar palavra sob o cursor (Próxima / Anterior)
--     set({ "n", "x" }, "<C-n>", function()
--       mc.matchAddCursor(1)
--     end, { desc = "Próxima ocorrência" })
--     set({ "n", "x" }, "<C-p>", function()
--       mc.matchAddCursor(-1)
--     end, { desc = "Ocorrência anterior" })
--
--     -- Pular a ocorrência atual
--     set({ "n", "x" }, "<C-x>", function()
--       mc.matchSkipCursor(1)
--     end, { desc = "Pular ocorrência" })
--
--     -- Alternar cursor principal/secundário manualmente
--     set({ "n", "x" }, "<C-q>", mc.toggleCursor, { desc = "Alternar cursor atual" })
--
--     -- Limpar todos os cursores com Esc
--     set("n", "<Esc>", function()
--       if mc.hasCursors() then
--         mc.clearCursors()
--       else
--         vim.cmd("noh") -- Limpa o highlight de buscas comuns do neovim se não houver multicursor
--       end
--     end, { desc = "Limpar cursores" })
--   end,
-- }

return {
  "jake-stewart/multicursor.nvim",
  branch = "main",
  config = function()
    local mc = require("multicursor-nvim")

    mc.setup()

    local set = vim.keymap.set

    -- Adicionar cursor acima/abaixo (Modos Normal e Visual)
    set({ "n", "x" }, "<A-Up>", function()
      mc.lineAddCursor(-1)
    end, { desc = "Adicionar cursor acima" })
    set({ "n", "x" }, "<A-Down>", function()
      mc.lineAddCursor(1)
    end, { desc = "Adicionar cursor abaixo" })

    -- Selecionar palavra sob o cursor (Próxima / Anterior)
    set({ "n", "x" }, "<C-n>", function()
      mc.matchAddCursor(1)
    end, { desc = "Próxima ocorrência" })
    set({ "n", "x" }, "<C-p>", function()
      mc.matchAddCursor(-1)
    end, { desc = "Ocorrência anterior" })

    -- Pular a ocorrência atual
    set({ "n", "x" }, "<C-x>", function()
      mc.matchSkipCursor(1)
    end, { desc = "Pular ocorrência" })

    -- Ativar / Desativar os cursores secundários temporariamente
    set({ "n", "x" }, "<C-q>", function()
      if not mc.cursorsEnabled() then
        mc.enableCursors()
      else
        mc.disableCursors()
      end
    end, { desc = "Ligar/Desligar multi-cursor" })

    -- Limpar todos os cursores com Esc
    set("n", "<Esc>", function()
      if not mc.cursorsEnabled() then
        mc.enableCursors()
      elseif mc.hasCursors() then
        mc.clearCursors()
      else
        vim.cmd("noh")
      end
    end, { desc = "Limpar cursores" })
  end,
}
