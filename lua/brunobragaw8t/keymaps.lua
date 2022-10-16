local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Map Space as Leader
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Stay in visual mode after indenting
keymap('v', '>', '>gv', opts)
keymap('v', '<', '<gv', opts)

-- Don't yank on paste
keymap('v', 'p', '"_dP', opts)
