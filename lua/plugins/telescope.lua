return {
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    opts = {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "bottom",
          },
        },
        file_ignore_patterns = {
          "^node_modules/",
          "^.git/",
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")

      telescope.setup(opts)

      telescope.load_extension("ui-select")
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
    end,
  },
}
