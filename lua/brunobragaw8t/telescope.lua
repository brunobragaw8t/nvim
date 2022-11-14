local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

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

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<Leader>f", builtin.find_files, {})
vim.keymap.set("n", "<Leader>F", builtin.live_grep, {})
vim.keymap.set("n", "<Leader>g", builtin.git_status, {})
