require("nvim-tree").setup({
  view = {
    adaptive_size = true,
    hide_root_folder = true,
  },
  actions = {
    open_file = {
      quit_on_open = true, -- Close tree when opening a file
    },
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

vim.keymap.set("n", "<Leader>e", ":NvimTreeToggle<CR>", { silent = true })
