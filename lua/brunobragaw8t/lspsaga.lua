local status_ok, lspsaga = pcall(require, "lspsaga")
if not status_ok then
  return
end

lspsaga.init_lsp_saga({
  code_action_icon = "",
})

-- Mappings
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<Leader>ca", "<Cmd>Lspsaga code_action<CR>", opts)
