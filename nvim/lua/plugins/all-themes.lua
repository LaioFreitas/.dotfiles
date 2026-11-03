return {
  -- Load all theme plugins but don't apply them
  -- This ensures all colorschemes are available for hot-reloading
  {
    "Mofiqul/dracula.nvim",
    lazy = false, -- Carrega ao iniciar o Neovim
    priority = 1000, -- Garante que seja carregado antes dos outros plugins
    opts = {
      transparent_bg = true, -- Altere para true se quiser o fundo transparente
    },
  },
  {
    "ribru17/bamboo.nvim",
    lazy = true,
    priority = 1,
  },
  {
    "bjarneo/aether.nvim",
    lazy = true,
    priority = 1,
  },
  {
    "bjarneo/ethereal.nvim",
    lazy = true,
    priority = 1,
  },
  {
    "bjarneo/hackerman.nvim",
    lazy = true,
    priority = 1,
  },
  {
    "bjarneo/vantablack.nvim",
    lazy = true,
    priority = 1,
  },
  {
    "bjarneo/white.nvim",
    lazy = true,
    priority = 1,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1,
  },
  {
    "sainnhe/everforest",
    lazy = true,
    priority = 1,
  },
  {
    "kepano/flexoki-neovim",
    lazy = true,
    priority = 1,
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent_mode = true,
      transparent_background = true, -- Ativa a transparência
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      integrations = {
        neotree = true,
        cmp = true,
        gitsigns = true,
        telescope = true,
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1,
  },
  {
    "tahayvr/matteblack.nvim",
    lazy = true,
    priority = 1,
  },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = true,
    priority = 1,
  },
  {
    "shaunsingh/nord.nvim",
    lazy = true,
    priority = 1,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 10,
    opts = {
      transparent_mode = true,
      transparent_background = true, -- Ativa a transparência
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      integrations = {
        neotree = true,
        cmp = true,
        gitsigns = true,
        telescope = true,
      },
    },
  },

  {
    "xero/miasma.nvim",
    lazy = true,
    priority = 1,
  },

  -- 1. Aqui estão todos os seus temas que você já tinha colocado...
  {
    "ribru17/bamboo.nvim",
    lazy = true,
    priority = 1,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1,
  },
  -- [... todos os outros temas do meio ficam aqui ...]
  {
    "xero/miasma.nvim",
    lazy = true,
    priority = 1,
  },

  -- 2. ⬇️ APAGUE O BOLO VELHO QUE ESTAVA AQUI NO FIM E COLE ESSE NOVO BLOCO INTEIRO ⬇️

  -- 🌟 Escreva aqui o nome do seu tema padrão da lista
  --   {
  --     vim.g.lazyvim_colorscheme = "tokyonight",
  --     "LazyVim/LazyVim",
  --     opts = function()
  --       local theme_cache = vim.fn.stdpath("state") .. "/last_colorscheme.txt"
  --       local default_theme = "tokyonight"
  --
  --       local f = io.open(theme_cache, "r")
  --       if f then
  --         local saved_theme = f:read("*l")
  --         f:close()
  --         if saved_theme and saved_theme ~= "" then
  --           default_theme = saved_theme
  --         end
  --       end
  --
  --       return {
  --         colorscheme = default_theme,
  --       }
  --     end,
  --     config = function(_, opts)
  --       require("lazyvim.config").init()
  --       vim.cmd("colorscheme " .. opts.colorscheme)
  --
  --       local groups = {
  --         "Normal",
  --         "NormalNC",
  --         "NormalFloat",
  --         "FloatBorder",
  --         "Pmenu",
  --         "PmenuKind",
  --         "PmenuExtra",
  --         "Terminal",
  --         "EndOfBuffer",
  --         "FoldColumn",
  --         "Folded",
  --         "SignColumn",
  --         "LineNr",
  --         "CursorLineNr",
  --         "WhichKeyFloat",
  --         "WhichKeyBorder",
  --         "WhichKeyNormal",
  --         "NotifyINFOBody",
  --         "NotifyERRORBody",
  --         "NotifyWARNBody",
  --         "NotifyTRACEBody",
  --         "NotifyDEBUGBody",
  --         "NotifyINFOTitle",
  --         "NotifyERRORTitle",
  --         "NotifyWARNTitle",
  --         "NotifyTRACETitle",
  --         "NotifyDEBUGTitle",
  --         "NotifyINFOBorder",
  --         "NotifyERRORBorder",
  --         "NotifyWARNBorder",
  --         "NotifyTRACEBorder",
  --         "NotifyDEBUGBorder",
  --         "NoicePopup",
  --         "NoicePopupBorder",
  --         "NoiceCmdlinePopup",
  --         "NoiceCmdlinePopupBorder",
  --         "CmpDoc",
  --         "CmpDocBorder",
  --         "CmpPmenu",
  --         "CmpPmenuBorder",
  --         "BlinkCmpMenu",
  --         "BlinkCmpMenuBorder",
  --         "BlinkCmpDoc",
  --         "BlinkCmpDocBorder",
  --         "BlinkCmpSignature",
  --         "BlinkCmpSignatureBorder",
  --         "TelescopeBorder",
  --         "TelescopeNormal",
  --         "TelescopePromptBorder",
  --         "TelescopePromptNormal",
  --         "TelescopePromptTitle",
  --         "TelescopeResultsBorder",
  --         "TelescopeResultsNormal",
  --         "TelescopePreviewBorder",
  --         "TelescopePreviewNormal",
  --         "SnacksPicker",
  --         "SnacksPickerBorder",
  --         "NeoTreeNormal",
  --         "NeoTreeNormalNC",
  --         "NeoTreeVertSplit",
  --         "NeoTreeWinSeparator",
  --         "NeoTreeEndOfBuffer",
  --         "NvimTreeNormal",
  --         "NvimTreeVertSplit",
  --         "NvimTreeEndOfBuffer",
  --       }
  --
  --       local function apply_transparency()
  --         for _, name in ipairs(groups) do
  --           local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = name, link = false })
  --           if ok then
  --             hl.bg = "NONE"
  --             vim.api.nvim_set_hl(0, name, hl)
  --           end
  --         end
  --       end
  --
  --       apply_transparency()
  --
  --       vim.api.nvim_create_autocmd("ColorScheme", {
  --         pattern = "*",
  --         callback = function(ev)
  --           local theme_cache = vim.fn.stdpath("state") .. "/last_colorscheme.txt"
  --           local file = io.open(theme_cache, "w")
  --           if file then
  --             file:write(ev.match)
  --             file:close()
  --           end
  --           apply_transparency()
  --         end,
  --       })
  --     end,
  --   },

  {
    "nvim-treesitter/nvim-treesitter", -- Usando um hook genérico que sempre roda
    config = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          -- Comandos diretos de baixo nível (Mais estáveis, rápidos e limpos)
          local commands = {
            "hi Normal guibg=NONE ctermbg=NONE",
            "hi NormalNC guibg=NONE ctermbg=NONE",
            "hi NormalFloat guibg=NONE ctermbg=NONE",
            "hi FloatBorder guibg=NONE ctermbg=NONE",
            "hi Pmenu guibg=NONE ctermbg=NONE",
            "hi SignColumn guibg=NONE ctermbg=NONE",
            "hi LineNr guibg=NONE ctermbg=NONE",
            "hi CursorLineNr guibg=NONE ctermbg=NONE",
            "hi WhichKeyFloat guibg=NONE ctermbg=NONE",
            "hi WhichKeyBorder guibg=NONE ctermbg=NONE",
            "hi WhichKeyNormal guibg=NONE ctermbg=NONE",
            "hi SnacksNotifier guibg=NONE ctermbg=NONE",
            "hi SnacksNotifierBorder guibg=NONE ctermbg=NONE",
            "hi TelescopeNormal guibg=NONE ctermbg=NONE",
            "hi TelescopeBorder guibg=NONE ctermbg=NONE",
            "hi NeoTreeNormal guibg=NONE ctermbg=NONE",
            "hi NeoTreeNormalNC guibg=NONE ctermbg=NONE",
            "hi NeoTreeWinSeparator guibg=NONE ctermbg=NONE",
          }
          for _, cmd in ipairs(commands) do
            vim.cmd(cmd)
          end
        end,
      })
    end,
  },
  -- Final do arquivo
}
