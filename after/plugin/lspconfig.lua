-- Diagnostics
vim.diagnostic.config({
  severity_sort = true,
  signs = false,
})

-- Mappings
local on_attach = function(client, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, bufopts)
end

vim.keymap.set('n', "<F8>", vim.diagnostic.goto_next)
vim.keymap.set('n', "<S-F8>", vim.diagnostic.goto_prev)

local lspconfig = require("lspconfig");

-- Servers
-- require("lspconfig").sumneko_lua.setup({
--   on_attach = on_attach,
--   settings = {
--     Lua = {
--       diagnostics = {
--         globals = { "vim" },
--       },
--     },
--   },
-- })

require("lspconfig").intelephense.setup({
  on_attach = on_attach,
})

lspconfig.volar.setup({
  on_attach = on_attach,
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
})

lspconfig.tailwindcss.setup({
  on_attach = on_attach,
})
