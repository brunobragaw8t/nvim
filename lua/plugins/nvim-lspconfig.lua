vim.diagnostic.config({
  float = {
    border = "rounded",
  },
})

return {
  "neovim/nvim-lspconfig",
  keys = {
    { "gs", "<cmd>Telescope lsp_document_symbols<cr>" },
    { "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>" },
    { "<leader>rN", "<cmd>lua vim.lsp.buf.rename()<cr>" },
    { "\\", "<Cmd>lua vim.diagnostic.goto_next({ buffer = 0 })<CR>" },
    { "<M-\\>", "<Cmd>lua vim.diagnostic.goto_prev({ buffer = 0 })<CR>" },
  },
  opts = {
    servers = {
      eslint = {},
    },
    setup = {
      eslint = function()
        require("lazyvim.util").lsp.on_attach(function(client, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
              pcall(vim.cmd, "EslintFixAll")
            end,
          })
        end)
      end,
    },
  },
}
