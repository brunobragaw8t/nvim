return {
  "nvim-telescope/telescope.nvim",
  commit = "40c31fdde93bcd85aeb3447bb3e2a3208395a868",
  event = "Bufenter",
  cmd = { "Telescope" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    commit = "36aaceb6e93addd20b1b18f94d86aecc552f30c4",
  },
  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup({
      defaults = {
        prompt_prefix = " ",
        mappings = {
          i = {
            ["<Esc>"] = actions.close,
          },
        },
      },
    })
  end,
}
