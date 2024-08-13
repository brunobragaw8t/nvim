return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete Other Buffers" },
    { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
    { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
    { "<C-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<C-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "<S-h>", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
    { "<S-l>", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
  },
  opts = {
    options = {
      always_show_bufferline = true,
      tab_size = 0,
      show_buffer_icons = false,
      show_buffer_close_icons = false,
      show_close_icon = false,
    },
  },
}
