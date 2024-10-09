return {
  filters = {
    dotfiles = false,
    git_ignored = false,
    custom = { "^\\.git" },
  },
  view = {
    number = true,
    relativenumber = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
}
