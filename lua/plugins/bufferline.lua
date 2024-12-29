return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        tab_size = 0,
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "NvimTree",
            text = "EXPLORER",
            text_align = "center",
          },
        },
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    })
  end,
}
