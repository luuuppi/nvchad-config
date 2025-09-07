return {
  "neovim/nvim-lspconfig",
  config = function()
    -- Load NvChad defaults
    require("nvchad.configs.lspconfig").defaults()
    local nvlsp = require("nvchad.configs.lspconfig")

    local lspconfig = require("lspconfig")

    local servers = { "html", "cssls", "ts_ls", "tailwindcss", "eslint", "bashls" }

    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup({
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
      })
    end
  end,
}
