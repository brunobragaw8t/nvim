return {
  "jose-elias-alvarez/null-ls.nvim",
  event = "BufReadPre",
  commit = "60b4a7167c79c7d04d1ff48b55f2235bf58158a7",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
      commit = "36aaceb6e93addd20b1b18f94d86aecc552f30c4",
      lazy = true,
    },
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      debug = false,
      sources = {
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint_d,
      },
    })
  end
}
