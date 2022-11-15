local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    indicator = {
      style = 'underline',
    },
    offsets = {
      {
        filetype = "NvimTree",
        text = "EXPLORER",
        text_align = "center",
        separator = false,
      },
    },
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = false,
    show_close_icon = false,
  },
}

-- Mappings
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<C-l>", ":BufferLineCycleNext<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-h>", ":BufferLineCyclePrev<CR>", opts)
vim.api.nvim_set_keymap("n", "<S-L>", ":BufferLineMoveNext<CR>", opts)
vim.api.nvim_set_keymap("n", "<S-H>", ":BufferLineMovePrev<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>q", ":bd<CR>", opts)
