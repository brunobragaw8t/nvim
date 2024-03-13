return {
  "kevinhwang91/nvim-ufo",
  commit = "e29dbf5b2d76ea43f4e585e3deeb6510488eee3f",
  event = "VimEnter",
  dependencies = {
    "kevinhwang91/promise-async",
    event = "VeryLazy",
    commit = "93540c168c5ed2b030ec3e6c40ab8bbb85e36355"
  },
  config = function()
    vim.o.foldcolumn = "0" -- Hide fold numbers column

    require("ufo").setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,
    })
  end
}
