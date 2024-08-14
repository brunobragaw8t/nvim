local highlight = {
  "Disabled",
}

local hooks = require("ibl.hooks")

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "Disabled", { fg = "#333333" })
end)

return {
  "lukas-reineke/indent-blankline.nvim",
  opts = {
    indent = {
      highlight = highlight,
    },
  },
}
