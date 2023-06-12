return {
  "neovim/nvim-lspconfig",
  commit = "649137cbc53a044bffde36294ce3160cb18f32c7",
  lazy = true,
  dependencies = {
    {
      "hrsh7th/cmp-nvim-lsp",
      commit = "0e6b2ed705ddcff9738ec4ea838141654f12eeef",
    },
  },
  config = function()
    -- -- CAPABILITIES -- --

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

    -- -- KEYMAPS -- --

    local on_attach = function(_, bufnr)
      local opts = { noremap = true, silent = true }
      local keymap = vim.api.nvim_buf_set_keymap

      keymap(bufnr, "n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
      keymap(bufnr, "n", "gD", "<Cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
      keymap(bufnr, "n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
      keymap(bufnr, "n", "<C-k>", "<Cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
      keymap(bufnr, "i", "<C-k>", "<Cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
      keymap(bufnr, "n", "gs", "<Cmd>Telescope lsp_document_symbols<CR>", opts)
      keymap(bufnr, "n", "gr", "<Cmd>Telescope lsp_references<CR>", opts)

      keymap(bufnr, "n", "<leader>rn", "<Cmd>lua vim.lsp.buf.rename()<CR>", opts)
      keymap(bufnr, "n", "<leader>ca", "<Cmd>lua vim.lsp.buf.code_action()<CR>", opts)
      keymap(bufnr, "n", "<leader>fm", "<Cmd>lua vim.lsp.buf.format()<CR>", opts)

      keymap(bufnr, "n", "\\", "<Cmd>lua vim.diagnostic.goto_next({ buffer = 0 })<CR>", opts)
      keymap(bufnr, "n", "<M-\\>", "<Cmd>lua vim.diagnostic.goto_prev({ buffer = 0 })<CR>", opts)
      keymap(bufnr, "n", "gl", "<Cmd>lua vim.diagnostic.open_float()<CR>", opts)
    end

    -- -- LANGUAGE SERVERS -- --

    local lspconfig = require("lspconfig")

    local servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = {
                [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                [vim.fn.stdpath "config" .. "/lua"] = true,
              },
            },
            telemetry = {
              enable = false,
            },
          },
        },
      },
      tsserver = {},
      volar = {},
    }

    for server, options in pairs(servers) do
      Opts = {
        on_attach = on_attach,
        capabilities = capabilities,
      }

      Opts = vim.tbl_deep_extend("force", options, Opts)

      lspconfig[server].setup(Opts)
    end

    -- -- DIAGNOSTICS -- --

    vim.diagnostic.config({
      signs = false,
      update_in_insert = true,
      severity_sort = true,
    })

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
      border = "rounded",
    })

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
      border = "rounded",
    })
  end
}
