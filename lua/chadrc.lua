---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "everblush",
}

M.nvdash = {
  load_on_startup = true,
  buttons = {
    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },

    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashFooter",
      no_gap = true,
    },

    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
  },
}

M.ui = {
  telescope = {
    style = "bordered",
  },
  cmp = {
    style = "default",
    format_colors = {
      tailwind = true,
      icon = "󱓻",
    },
    icons = true,
    icons_left = true,
  },
  statusline = {
    enabled = true,
    theme = "minimal",
    separator_style = "round",
  },
  tabufline = {
    enabled = true,
    lazyload = true,
  },
}

M.colorify = {
  enabled = true,
  highlight = { hex = true, lspvars = true },
  mode = "virtual",
  virt_text = "󱓻 ",
}

M.lsp = {
  signature = true,
}

return M
