-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Ctrl-Backspace to delete word backwards
map("i", "<C-h>", "<C-w>", { desc = "Delete word backwards", remap = false })
map("c", "<C-h>", "<C-w>", { desc = "Delete word backwards", remap = false })

-- Move around windows
map("n", "<C-q>h", "<C-w>h", { desc = "Go to left window", remap = false })
map("n", "<C-q>j", "<C-w>j", { desc = "Go to lower window", remap = false })
map("n", "<C-q>k", "<C-w>k", { desc = "Go to upper window", remap = false })
map("n", "<C-q>l", "<C-w>l", { desc = "Go to right window", remap = false })

-- Buffers
map("n", "<C-l>", ":BufferLineCycleNext<CR>", { desc = "Go to next buffer", remap = false })
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", { desc = "Go to previous buffer", remap = false })
map("n", "<S-l>", ":BufferLineMoveNext<CR>", { desc = "Move buffer to right", remap = false })
map("n", "<S-h>", ":BufferLineMovePrev<CR>", { desc = "Move buffer to lev", remap = false })
map("n", "<C-w>", ":bd<CR>", { desc = "Close buffer", remap = false })

-- LSP config
map("n", "\\", vim.diagnostic.goto_next, { desc = "Go to next diagnostic", remap = false })
map("n", "<M-\\>", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic", remap = false })

-- Eslint
map("n", "<Leader>fa", "<Cmd>EslintFixAll<CR>", { desc = "Eslint: fix all", remap = false })
