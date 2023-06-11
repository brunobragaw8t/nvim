local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
  "plugins",
  {
    defaults = {
      lazy = true,
      version = "57cce98dfdb2f2dd05a0567d89811e6d0505e13b"
    },
    install = {
      colorscheme = { "vscode" }
    },
    performance = {
      rtp = {
        disabled_plugins = {
          -- "gzip",
          -- "matchit",
          -- "matchparen",
          -- "netrwPlugin",
          -- "tarPlugin",
          -- "tohtml",
          "tutor",
          -- "zipPlugin",
        },
      },
    },
  }
)
