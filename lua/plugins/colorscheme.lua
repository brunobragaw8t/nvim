return {
  "Mofiqul/vscode.nvim",
  commit = "3ae7e188f0b58b29bc1b5d3698e47ce54f51caf9",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("vscode").setup({
      transparent = true,
    })

    vim.cmd[[colorscheme vscode]]
  end
}
