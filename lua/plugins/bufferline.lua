return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("bufferline").setup({
      options = {
        indicator = {
          style = "underline",
        },
        offsets = {
          {
            filetype = "NvimTree",
            text = "EXPLORER",
            text_align = "center",
          },
        },
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    })

    vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", { silent = true })
    vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", { silent = true })
    vim.keymap.set("n", "<S-l>", ":BufferLineMoveNext<CR>", { silent = true })
    vim.keymap.set("n", "<S-h>", ":BufferLineMovePrev<CR>", { silent = true })
    vim.keymap.set("n", "<C-w>", ":bd<CR>", { silent = true })
  end,
}
