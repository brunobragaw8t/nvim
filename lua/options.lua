vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Tell Neovim about installed Nerd Font
vim.g.have_nerd_font = true

-- Display line numbers
vim.o.number = true

-- Set line numbers as relative
vim.o.relativenumber = true

-- Disable mouse
vim.o.mouse = ""

-- Hide mode label from command line
-- vim.o.showmode = false

-- Allow Neovim to access system clipboard
-- Schedule the setting after `UiEnter` because it can increase startup-time.
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history for closed files
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
-- vim.o.ignorecase = true
-- vim.o.smartcase = true

-- Always show the sign column, otherwise it would shift the text each time
vim.o.signcolumn = "yes"

-- Faster completion (4000ms default)
vim.o.updatetime = 300

-- Time to wait for a mapped sequence to complete (in milliseconds)
vim.o.timeoutlen = 300

-- Sets how Neovim displays certain whitespace characters in the editor
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live
vim.o.inccommand = "split"

-- Highlight current line
vim.o.cursorline = true

-- Keep cursor vertically centered on screen
vim.o.scrolloff = 999

-- Don't let cursor touch side of window
vim.o.sidescrolloff = 16

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.o.confirm = true

-- Set line-length rulers
vim.o.colorcolumn = "81,121"

-- Set tab width to 2 spaces
vim.o.shiftwidth = 2

-- Set tab width to 2 spaces
vim.o.tabstop = 2

-- Convert tabs to spaces
vim.o.expandtab = true

-- Don't wrap long lines
vim.o.wrap = false

-- Set default end-of-line character to LF
vim.o.fileformats = "unix"

-- Hide error when opening CRLF files
vim.o.modeline = false

-- The encoding written to a file
vim.o.fileencoding = "utf-8"

-- Set term gui colors
vim.o.termguicolors = true

vim.o.winborder = "rounded"
