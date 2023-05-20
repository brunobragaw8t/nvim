return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "css",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "php",
        "scss",
        "typescript",
        "vim",
        "vue",
      },
      highlight = {
        enable = true,
      },
      textobjects = {
        swap = {
          enable = true,
          swap_next = {
            ["<Leader>a"] = "@parameter.inner",
          },
          swap_previous = {
            ["<Leader>A"] = "@parameter.inner",
          },
        },
      },
    })
  end,
}
