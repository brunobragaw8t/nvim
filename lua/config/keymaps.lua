-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Ctrl-Backspace to delete word backwards
vim.keymap.set("i", "<C-h>", "<C-w>")
vim.keymap.set("c", "<C-h>", "<C-w>")

-- Move around windows
vim.keymap.set("n", "<C-Q>k", "<C-W>k")
vim.keymap.set("n", "<C-Q>l", "<C-W>l")
vim.keymap.set("n", "<C-Q>j", "<C-W>j")
vim.keymap.set("n", "<C-Q>h", "<C-W>h")

-- Close buffer
vim.keymap.set("n", "<C-w>", "<Cmd>bd<CR>")

-- Don't yank on pasting
vim.keymap.set("v", "p", "P")

-- Don't yank on deleting character
vim.keymap.set("n", "x", '"_x')

-- Yank whole buffer
vim.keymap.set("n", "<Leader>y", "<Cmd>%y<CR>")
