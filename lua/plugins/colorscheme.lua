return {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup({
      transparent = true,
    })

    vim.cmd[[colorscheme tokyonight]]
  end,
}
