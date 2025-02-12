return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "typescript",
        "javascript",
        "cpp",
      },
    },
  },
  {
    "folke/trouble.nvim",
    opts = {
      win = {
        position = "right",
      },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
  },
  {
    "carbon-steel/detour.nvim",
  },
  {
    "almo7aya/openingh.nvim",
    opts = {},
    lazy = false,
  },
}
