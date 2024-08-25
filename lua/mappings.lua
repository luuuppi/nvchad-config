require "nvchad.mappings"

local map = vim.keymap.set

-- General
map("i", "jj", "<ESC>")
map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close other buffers" })

-- Term
map({ "n", "t" }, "<C-j>", function()
  require("nvchad.term").toggle {
    pos = "sp",
    size = 0.4,
  }
end, { desc = "Toggle terminal horizontally" })

-- Nvim-tree
map("n", "<leader>e", function()
  require("nvim-tree.api").tree.toggle()
end, { desc = "Toggle nvim-tree" })

-- Trouble
map("n", "<leader>qd", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Toggle trouble diagnostics" })
map("n", "<leader>ql", "<cmd>Trouble lsp toggle<cr>", { desc = "Toggle trouble lsp" })
map("n", "<leader>qq", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Run code action" })
