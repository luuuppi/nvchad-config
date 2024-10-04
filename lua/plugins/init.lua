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
    "windwp/nvim-ts-autotag",
    lazy = false,
    opts = require "configs.tsautotag",
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
}
