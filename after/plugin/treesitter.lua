require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "css",
    "help",
    "html",
    "http",
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
})
