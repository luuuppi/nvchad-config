return {
  "windwp/nvim-ts-autotag",
  ft = "typescriptreact",
  config = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = true,
      },
    })
  end,
}
