require("nvchad.mappings")

local map = vim.keymap.set

map("i", "jj", "<ESC>")
map("i", "<C-H>", "<C-W>")

map("i", "<C-J>", 'copilot#Accept("")', { expr = true, replace_keycodes = false, silent = true })
