return {
  "akinsho/bufferline.nvim",
  commit = "c7492a76ce8218e3335f027af44930576b561013",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
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
          }
        },
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    })
  end
}
