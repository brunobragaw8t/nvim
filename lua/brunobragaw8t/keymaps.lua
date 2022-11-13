local opts = { noremap = true, silent = true }

-- Map Space as Leader
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Stay in visual mode after indenting
vim.api.nvim_set_keymap("v", ">", ">gv", opts)
vim.api.nvim_set_keymap("v", "<", "<gv", opts)

-- Don't yank on paste
vim.api.nvim_set_keymap("v", "p", '"_dP', opts)
