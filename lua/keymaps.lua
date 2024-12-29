-- Clear search highlight on Escape
vim.keymap.set("n", "<Esc>", "<Cmd>nohls<CR>")

-- Save with Ctrl+S
vim.keymap.set({ "i", "n", "v", "x" }, "<C-s>", vim.cmd.write)

-- Move lines
vim.keymap.set("n", "<M-j>", "<Cmd>m .+1<CR>==")
vim.keymap.set("n", "<M-k>", "<Cmd>m .-2<CR>==")
vim.keymap.set("v", "<M-j>", "<Cmd>m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", "<Cmd>m '<-2<CR>gv=gv")

-- Ctrl-Backspace to delete word backwards
vim.keymap.set("i", "<C-h>", "<C-w>")
vim.keymap.set("c", "<C-h>", "<C-w>")

-- Move around windows
vim.keymap.set("n", "<C-Q>k", "<C-W>k")
vim.keymap.set("n", "<C-Q>l", "<C-W>l")
vim.keymap.set("n", "<C-Q>j", "<C-W>j")
vim.keymap.set("n", "<C-Q>h", "<C-W>h")

-- Close buffer
vim.keymap.del("n", "<C-w>d") -- remove conflict
vim.keymap.del("n", "<C-w><C-d>") -- remove conflict
vim.keymap.set("n", "<C-w>", "<Cmd>bd<CR>")

-- Don't yank on pasting
vim.keymap.set("v", "p", "P")

-- Don't yank on deleting character
vim.keymap.set("n", "x", '"_x')

-- Yank whole buffer
vim.keymap.set("n", "<Leader>y", "<Cmd>%y<CR>")

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- -- PLUGINS -- --

-- Bufferline
vim.keymap.set("n", "<C-l>", "<Cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<C-h>", "<Cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<S-l>", "<Cmd>BufferLineMoveNext<CR>")
vim.keymap.set("n", "<S-h>", "<Cmd>BufferLineMovePrev<CR>")

-- NvimTree
vim.keymap.set("n", "<Leader>e", "<Cmd>NvimTreeToggle<CR>")

-- Telescope
vim.keymap.set("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fg", "<Cmd>Telescope live_grep<CR>")
