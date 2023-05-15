require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "css",
    "help",
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
})
