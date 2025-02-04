return {
  "hrsh7th/nvim-cmp",
  opts = function()
    local config = require("nvchad.configs.cmp")
    local cmp = require("cmp")

    config.mapping["<C-e>"] = cmp.mapping.abort()

    return config
  end,
}
