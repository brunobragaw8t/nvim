return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      git = {
        enable = false,
      },
      view = {
        adaptive_size = true,
      },
      update_focused_file = {
        enable = true,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      renderer = {
        root_folder_label = false,
      },
    })

    vim.keymap.set("n", "<Leader>e", "<Cmd>NvimTreeToggle<CR>")
  end,
}
