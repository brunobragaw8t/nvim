return {
  "nvim-treesitter/nvim-treesitter",
  commit = "226c1475a46a2ef6d840af9caa0117a439465500",
  event = "BufReadPost",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "css",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "typescript",
      },
      auto_install = false,
      highlight = {
        enable = true,
      },
    }
  end
}
