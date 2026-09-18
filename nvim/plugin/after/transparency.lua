-- -- Make highlight groups transparent
-- -- ~/.config/nvim/lua/config/autocmds.lua
--
-- -- 1. Função para remover o fundo mantendo os outros atributos
-- local function make_transparent(name)
--   local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = name, link = false })
--   if ok then
--     hl.bg = "NONE" -- Usar "NONE" é mais seguro em versões novas do Neovim
--     vim.api.nvim_set_hl(0, name, hl)
--   end
-- end
--
-- -- 2. Lista de grupos que você deseja transparentes
-- local groups = {
--   -- Fundo principal e janelas
--   "Normal",
--   "NormalFloat",
--   "FloatBorder",
--   "Pmenu",
--   "Terminal",
--   "EndOfBuffer",
--   "FoldColumn",
--   "Folded",
--   "SignColumn",
--   "LineNr",
--   "CursorLineNr",
--   "NormalNC",
--   "WhichKeyFloat",
--   "TelescopeBorder",
--   "TelescopeNormal",
--   "TelescopePromptBorder",
--   "TelescopePromptTitle",
--   -- Neo-tree
--   "NeoTreeNormal",
--   "NeoTreeNormalNC",
--   "NeoTreeVertSplit",
--   "NeoTreeWinSeparator",
--   "NeoTreeEndOfBuffer",
--   -- Nvim-tree
--   "NvimTreeNormal",
--   "NvimTreeVertSplit",
--   "NvimTreeEndOfBuffer",
--   -- Notify
--   "NotifyINFOBody",
--   "NotifyERRORBody",
--   "NotifyWARNBody",
--   "NotifyTRACEBody",
--   "NotifyDEBUGBody",
--   "NotifyINFOTitle",
--   "NotifyERRORTitle",
--   "NotifyWARNTitle",
--   "NotifyTRACETitle",
--   "NotifyDEBUGTitle",
--   "NotifyINFOBorder",
--   "NotifyERRORBorder",
--   "NotifyWARNBorder",
--   "NotifyTRACEBorder",
--   "NotifyDEBUGBorder",
-- }
--
-- -- 3. Autocmd para rodar SEMPRE que um colorscheme for carregado
-- local group = vim.api.nvim_create_augroup("TransparentBackground", { clear = true })
--
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   group = group,
--   pattern = "*",
--   callback = function()
--     for _, name in ipairs(groups) do
--       make_transparent(name)
--     end
--   end,
-- })

-- ~/.config/nvim/lua/config/autocmds.lua

-- Forçar Neovim a desativar a pseudo-transparência embaçada (corrige o fundo cinza de popups)
-- p
-- ~/.config/nvim/lua/config/options.lua

vim.opt.winblend = 0
vim.opt.pumblend = 0

-- 1. Função para remover o fundo mantendo os outros atributos
-- local function make_transparent(name)
--   local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = name, link = false })
--   if ok then
--     hl.bg = "NONE"
--     vim.api.nvim_set_hl(0, name, hl)
--   end
-- end
local function make_transparent(name)
  local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = name, link = false })
  if ok then
    vim.api.nvim_set_hl(0, name, {
      fg = hl.fg, -- Mantém a cor da linha da borda do tema
      bg = "NONE", -- 🌟 Remove o fundo sólido da borda
      ctermbg = "NONE",
      sp = hl.sp,
      bold = hl.bold,
      italic = hl.italic,
    })
  end
end
-- 2. Lista ATUALIZADA de grupos (Com Which-key, Notificações e Autocomplete)
local groups = {
  -- Fundo principal e janelas básicas
  "Normal",
  "NormalNC",
  "NormalFloat",
  "FloatBorder",
  "Pmenu",
  "PmenuKind",
  "PmenuExtra",
  "Terminal",
  "EndOfBuffer",
  "FoldColumn",
  "Folded",
  "SignColumn",
  "LineNr",
  "CursorLineNr",

  -- ⌨️ Menu da Tecla Leader (Which-Key)
  "WhichKeyFloat",
  "WhichKeyBorder",
  "WhichKeyNormal",
  "WhichKeyGroup",
  "WhichKeySeparator",
  "WhichKeyDesc",
  "WhichKeyKey",

  -- 🔔 Notificações (nvim-notify / noice)
  "SnacksNotifierBorder",
  "SnacksNotifierInfo",
  "SnacksNotifierWarn",
  "SnacksNotifierError",
  "SnacksNotifierDebug",
  "SnacksNotifierTrace",
  "SnacksNotation",
  "SnacksNotifier",
  "SnacksNotifierBorder",
  "SnacksNotifierHistory",
  "NotifyINFOBody",
  "NotifyERRORBody",
  "NotifyWARNBody",
  "NotifyTRACEBody",
  "NotifyDEBUGBody",
  "NotifyINFOTitle",
  "NotifyERRORTitle",
  "NotifyWARNTitle",
  "NotifyTRACETitle",
  "NotifyDEBUGTitle",
  "NotifyINFOBorder",
  "NotifyERRORBorder",
  "NotifyWARNBorder",
  "NotifyTRACEBorder",
  "NotifyDEBUGBorder",
  "NoicePopup",
  "NoicePopupBorder",
  "NoiceCmdlinePopup",
  "NoiceCmdlinePopupBorder",

  -- 🤖 Autocomplete do LSP (nvim-cmp / blink.cmp)
  "CmpDoc",
  "CmpDocBorder",
  "CmpPmenu",
  "CmpPmenuBorder",
  "BlinkCmpMenu",
  "BlinkCmpMenuBorder",
  "BlinkCmpDoc",
  "BlinkCmpDocBorder",
  "BlinkCmpSignature",
  "BlinkCmpSignatureBorder",

  -- 🔍 Menus de busca (Telescope / Snacks Picker)
  "TelescopeBorder",
  "TelescopeNormal",
  "TelescopePromptBorder",
  "TelescopePromptNormal",
  "TelescopePromptTitle",
  "TelescopeResultsBorder",
  "TelescopeResultsNormal",
  "TelescopePreviewBorder",
  "TelescopePreviewNormal",
  "SnacksPicker",
  "SnacksPickerBorder",

  -- 📁 Laterais (Neo-tree / Nvim-tree)
  "NeoTreeNormal",
  "NeoTreeNormalNC",
  "NeoTreeVertSplit",
  "NeoTreeWinSeparator",
  "NeoTreeEndOfBuffer",
  "NvimTreeNormal",
  "NvimTreeVertSplit",
  "NvimTreeEndOfBuffer",

  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#00000000", -- Força o canal alpha para transparente invisível
    },
  },
}

-- 3. Autocmd para rodar SEMPRE que um colorscheme for carregado
-- local group = vim.api.nvim_create_augroup("TransparentBackground", { clear = true })
--
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   group = group,
--   pattern = "*",
--   callback = function()
--     for _, name in ipairs(groups) do
--       make_transparent(name)
--     end
--   end,
-- })
-- local group = vim.api.nvim_create_augroup("TransparentBackground", { clear = true })
--
vim.api.nvim_create_autocmd({ "ColorScheme", "User" }, {
  group = group,
  pattern = { "*", "LazyVimColorscheme" },
  callback = function()
    for _, name in ipairs(groups) do
      make_transparent(name)
    end
  end,
})
