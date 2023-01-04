require("bufferline").setup({
  options = {
    indicator = {
      style = 'underline',
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

vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<S-l>", ":BufferLineMoveNext<CR>")
vim.keymap.set("n", "<S-h>", ":BufferLineMovePrev<CR>")
vim.keymap.set("n", "<C-q>", ":bd<CR>")
