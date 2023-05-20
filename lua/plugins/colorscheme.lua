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

    -- Make background transparent
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
}
