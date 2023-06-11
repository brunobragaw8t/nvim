-- Map Space as Leader
vim.g.mapleader = " "

-- Clear search highlight on Escape
vim.keymap.set("n", "<Esc>", ":nohls<CR>", { silent = true })

-- Save with Ctrl+S
vim.keymap.set({"i", "n", "v", "x"}, "<C-s>", vim.cmd.write, { silent = true })

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Ctrl-Backspace tp delete word backwards
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

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- -- PLUGINS -- --

-- Bufferline
vim.keymap.set("n", "<C-l>", "<Cmd>BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", "<Cmd>BufferLineCyclePrev<CR>", { silent = true })
vim.keymap.set("n", "<S-l>", "<Cmd>BufferLineMoveNext<CR>", { silent = true })
vim.keymap.set("n", "<S-h>", "<Cmd>BufferLineMovePrev<CR>", { silent = true })

-- NvimTree
vim.keymap.set("n", "<Leader>e", "<Cmd>NvimTreeToggle<CR>", { silent = true })

-- Telescope
vim.keymap.set("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", "<Leader>fg", "<Cmd>Telescope live_grep<CR>", { silent = true })
vim.keymap.set("n", "<Leader>fp", "<Cmd>Telescope projects<CR>", { silent = true })
vim.keymap.set("n", "<Leader>fb", "<Cmd>Telescope buffers<CR>", { silent = true })

-- Lsp
vim.keymap.set("n", "<Leader>fm", "<Cmd>lua vim.lsp.buf.format({ async = true })<CR>", { silent = true })
