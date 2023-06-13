return {
  "kyazdani42/nvim-tree.lua",
  commit = "f5d970d4506f385b29534252d8c15a782fa53034",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    commit = "e283ab937e0197b37ec5d8013e49495193407324"
  },
  config = function()
    require("nvim-tree").setup({
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
  end
}
