return {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup({
      transparent = true,
      styles = {
        comments = { italic = false },
      },
    })

    vim.cmd[[colorscheme tokyonight]]
  end,
}
