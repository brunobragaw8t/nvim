return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        prompt_prefix = " ",
        mappings = {
          i = {
            ["<Esc>"] = require("telescope.actions").close,
          },
        },
      },
    })
  end,
}
