return {
  "jose-elias-alvarez/null-ls.nvim",
  event = "BufReadPre",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
      commit = "36aaceb6e93addd20b1b18f94d86aecc552f30c4",
    },
  },
  config = function ()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.phpcs.with({
          extra_args = { "$FILENAME", "--standard=NiW" },
        }),
        null_ls.builtins.formatting.phpcbf.with({
          extra_args = { "--standard=NiW" },
        }),
      },
    })
  end
}
