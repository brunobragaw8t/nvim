local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local project_status_ok, project_nvim = pcall(require, "project_nvim")
if not project_status_ok then
  return
end

project_nvim.setup()

telescope.load_extension("projects")

local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<Esc>"] = actions.close,
      },
    },
  },
})

-- Mappings
local opts = { noremap = true, silent = true }
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<Leader>f", builtin.find_files, opts)
vim.keymap.set("n", "<Leader>F", builtin.live_grep, opts)
vim.keymap.set("n", "<Leader>g", builtin.git_status, opts)
vim.keymap.set("n", "<Leader>p", ":Telescope projects<CR>", opts)
