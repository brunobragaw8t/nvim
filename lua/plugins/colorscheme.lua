return {
  -- add vscode
  {
    "Mofiqul/vscode.nvim",
    opts = {
      transparent = true,
    },
  },

  -- Configure LazyVim to load vscode
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
