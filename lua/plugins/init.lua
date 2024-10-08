return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },

  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = require "configs.mason",
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = require "configs.nvimtree",
  },

  {
    "folke/trouble.nvim",
    lazy = false,
    opts = {
      focus = true,
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = require "configs.telescope",
  },

  {
    "tpope/vim-fugitive",
    cmd = "Git",
  },

  {
    "pmizio/typescript-tools.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {
      settings = {
        jsx_close_tag = {
          enable = true,
          filetypes = { "javascriptreact", "typescriptreact" },
        },
      },
    },
  },

  {
    "numToStr/Comment.nvim",
    lazy = false,
    dependencies = { "JoosepAlviste/nvim-ts-context-commentstring", "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("Comment").setup {
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      }
    end,
  },

  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    opts = {
      enable_autocmd = false,
    },
  },
}
