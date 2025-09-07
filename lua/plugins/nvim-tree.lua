return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    view = {
      width = 40,
    },
    filters = {
      custom = { "^.git$" },
    },
  },
}
