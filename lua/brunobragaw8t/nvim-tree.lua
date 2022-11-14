local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup({
  view = {
    adaptive_size = true,
  },
  actions = {
    open_file = {
      quit_on_open = true, -- Close tree when opening a file
    },
  },
  diagnostics = {
    enable = true,
  },
  renderer = {
    icons = {
      git_placement = "after",
      glyphs = {
        git = {
          unstaged = "",
          staged = "✓",
          unmerged = "═",
          renamed = "",
          untracked = "",
          deleted = "",
          ignored = "",
        },
      },
    },
  },
  git = {
    ignore = false,
  },
})

-- Mappings
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)
