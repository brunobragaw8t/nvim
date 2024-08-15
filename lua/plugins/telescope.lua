local actions = require("telescope.actions")

return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      prompt_prefix = " ",
      mappings = {
        i = {
          ["<Esc>"] = actions.close,
        },
      },
    },
  },
}
