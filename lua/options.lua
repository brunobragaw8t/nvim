vim.opt.clipboard = "unnamedplus" -- Allow Neovim to access system clipboard
vim.opt.cursorline = true         -- Highlight current line
vim.opt.number = true             -- Display line numbers
vim.opt.relativenumber = true     -- Set line numbers as relative
vim.opt.scrolloff = 999           -- Keep cursor vertically centered on screen
vim.opt.sidescrolloff = 16        -- Don't let cursor touch side of window
vim.opt.wrap = false              -- Don't wrap long lines
vim.opt.fileformats = "unix"      -- Set default end-of-line character to LF
vim.opt.shiftwidth = 2            -- Set tab width to 2 spaces
vim.opt.tabstop = 2               -- Set tab width to 2 spaces
vim.opt.expandtab = true          -- Convert tabs to spaces
vim.opt.undofile = true           -- Save undo history for closed files
vim.opt.colorcolumn = "81,121"    -- Set line-length rulers
vim.opt.modeline = false          -- Hide error when opening CRLF lifes
vim.opt.updatetime = 300          -- Faster completion (4000ms default)
vim.opt.fileencoding = "utf-8"    -- The encoding written to a file
vim.opt.termguicolors = true      -- Set term gui colors
vim.opt.timeoutlen = 300          -- Time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.showcmd = false           -- Hide (partial) command in the last line of the screen (for performance)
vim.opt.signcolumn = "yes"        -- Always show the sign column, otherwise it would shift the text each time

-- vim.opt.smartindent = true        -- make indenting smarter again