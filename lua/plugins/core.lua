return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("tokyonight").load({
          transparent = true,
        })
      end,
    },
  },
}
