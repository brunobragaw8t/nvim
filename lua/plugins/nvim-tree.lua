return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        adaptive_size = true,
      },
      actions = {
        open_file = {
          quit_on_open = true, -- Close tree when opening a file
        },
      },
      renderer = {
        root_folder_label = false,
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
  end,
}
