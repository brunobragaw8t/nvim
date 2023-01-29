-- Map Space as Leader
vim.g.mapleader = " "

-- Don't yank on paste
vim.keymap.set("v", "p", '"_dP')

-- Clear search highlight on Escape
vim.keymap.set("n", "<Esc>", ":nohls<CR>", { silent = true })

-- Save with Ctrl+S
vim.keymap.set({"i", "n", "v", "x"}, "<C-s>", vim.cmd.write, { silent = true })
