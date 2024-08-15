-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.scrolloff = 999 -- Keep cursor vertically centered on screen
vim.opt.sidescrolloff = 16 -- Don't let cursor touch side of window
vim.opt.fileformats = "unix" -- Set default end-of-line character to LF
vim.opt.modeline = false -- Hide error when opening CRLF lifes
vim.opt.colorcolumn = "81,121" -- Set line-length rulers
vim.opt.fileencoding = "utf-8" -- The encoding written to a file
vim.opt.showcmd = false -- Hide (partial) command in the last line of the screen (for performance)
vim.g.autoformat = false
