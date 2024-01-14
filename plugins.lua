local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "nvim-telescope/telescope-fzf-native.nvim",
    event = "VeryLazy",
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    -- Discord Presence
    "andweeb/presence.nvim",
    event = "VeryLazy",
    opts = {
      main_image = "file",
      auto_update = true,
      neovim_image_text = "PaJlma Solo Technologies",
      enable_line_number = true,
      file_assets = {
        jsx = { "React JS", "react" },
        tsx = { "React TS", "react" },
        scss = {
          "SCSS",
          "https://sass-lang.com/assets/img/styleguide/seal-color.png",
        },
      },
    },
  },

  {
    "kdheepak/lazygit.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  {
    -- МУльтикурсор
    "mg979/vim-visual-multi",
    event = "VeryLazy",
  },

  {
    "machakann/vim-sandwich",
    event = "VeryLazy",
  },

  {
    -- JSX Introdution
    "neoclide/vim-jsx-improve",
    event = "VeryLazy",
  },

  {
    -- Подстсветка .ts .tsx файлов
    "HerringtonDarkholme/yats.vim",
    event = "VeryLazy",
  },

  {
    -- Emmet
    "mattn/emmet-vim",
    event = "VeryLazy",
  },

  {
    -- HighLighter
    "brenoprata10/nvim-highlight-colors",
    event = "VeryLazy",
    opts = {
      render = "background",
      enable_named_colors = true,
    },
  },

  {
    -- PX To REM
    "jsongerber/nvim-px-to-rem",
    event = "VeryLazy",
    opts = {
      root_font_size = 16,
      decimal_count = 4,
      show_virtual_text = true,
    },
  },
  -- To make a plugin not be loaded
  {
    "NvChad/nvim-colorizer.lua",
    enabled = false,
  },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
