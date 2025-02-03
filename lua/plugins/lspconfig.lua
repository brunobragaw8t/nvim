return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
    {
      "j-hui/fidget.nvim",
      opts = {},
    },
  },
  config = function()
    local on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true }
      local keymap = vim.api.nvim_buf_set_keymap

      keymap(bufnr, "n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
      keymap(bufnr, "n", "gD", "<Cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
      keymap(bufnr, "n", "<C-k>", "<Cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
      keymap(bufnr, "i", "<C-k>", "<Cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
      keymap(bufnr, "n", "gs", "<Cmd>Telescope lsp_document_symbols<CR>", opts)
      keymap(bufnr, "n", "grr", "<Cmd>Telescope lsp_references<CR>", opts)
      keymap(bufnr, "n", "<Leader>fa", "<Cmd>EslintFixAll<CR>", opts)
      keymap(bufnr, "n", "\\", "<Cmd>lua vim.diagnostic.goto_next({ buffer = 0 })<CR>", opts)
      keymap(bufnr, "n", "<M-\\>", "<Cmd>lua vim.diagnostic.goto_prev({ buffer = 0 })<CR>", opts)

      if client.name == "eslint" then
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          command = "EslintFixAll",
        })
      end
    end

    local server_opts = {
      on_attach = on_attach,
    }

    require("lspconfig").lua_ls.setup(server_opts)
    require("lspconfig").ts_ls.setup(server_opts)
    require("lspconfig").eslint.setup(server_opts) -- bun add -g vscode-langservers-extracted
    require("lspconfig").emmet_language_server.setup(server_opts) -- bun add -g @olrtg/emmet-language-server
    require("lspconfig").tailwindcss.setup(server_opts) -- bun add -g @tailwindcss/language-server
    require("lspconfig").biome.setup(server_opts) -- bun add -g @biomejs/biome
  end,
}
