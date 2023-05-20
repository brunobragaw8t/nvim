return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "williamboman/mason.nvim", config = true },
      "williamboman/mason-lspconfig.nvim",
      { "j-hui/fidget.nvim", config = true },
      "folke/neodev.nvim",
    },
    config = function()
      -- Config diagnostics
      vim.diagnostic.config({
        severity_sort = true,
        signs = false,
        float = {
          border = "rounded",
        },
      })

      -- Set general keymaps
      vim.keymap.set('n', "\\", vim.diagnostic.goto_next)
      vim.keymap.set('n', "<M-\\>", vim.diagnostic.goto_prev)

      -- Set buffer-specific keymaps
      local on_attach = function(_, bufnr)
        local bufopts = { noremap = true, silent = true, buffer = bufnr }

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
        vim.keymap.set({"n", "i"}, "<C-k>", vim.lsp.buf.signature_help, bufopts)
        vim.keymap.set("n", "<leader>ds", require("telescope.builtin").lsp_document_symbols)
        vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, bufopts)

        vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, bufopts)
        vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, bufopts)
        vim.keymap.set("n", "<Leader>fm", vim.lsp.buf.format, bufopts)
        vim.keymap.set("n", "<Leader>fa", "<Cmd>EslintFixAll<CR>", bufopts)

        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
        vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
      end

      -- Define servers to install
      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              workspace = { checkThirdParty = false },
              telemetry = { enable = false },
            },
          },
        },
        -- volar = {
        --   filetypes = { "typescript", "javascript", "vue", "json" },
        -- },
        -- tailwindcss = {},
        tsserver = {},
        eslint = {},
      }

      -- Setup neovim lua configuration
      require("neodev").setup({})

      -- nvim-cmp supports additional completion capabilities, so broadcast that to servers
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

      -- Set LSP handler settings
      local handlers = {
        ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {border = "rounded"}),
        ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {border = "rounded"}),
      }

      -- Ensure the servers above are installed
      local mason_lspconfig = require("mason-lspconfig")

      mason_lspconfig.setup({
        ensure_installed = vim.tbl_keys(servers),
      })

      mason_lspconfig.setup_handlers({
        function(server_name)
          if rawget(servers, server_name) == nil then
            return
          end

          local server_to_setup = {}

          server_to_setup.capabilities = capabilities
          server_to_setup.on_attach = on_attach
          server_to_setup.handlers = handlers

          if rawget(servers[server_name], "settings") ~= nil then
            server_to_setup.settings = servers[server_name].settings
          end

          if rawget(servers[server_name], "filetypes") ~= nil then
            server_to_setup.filetypes = servers[server_name].filetypes
          end

          require("lspconfig")[server_name].setup(server_to_setup)
        end,
      })

      -- nvim-cmp setup
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = false }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "path" },
          { name = "buffer" },
        }),
        window = {
          completion = cmp.config.window.bordered({
            border = "rounded",
          }),
          documentation = cmp.config.window.bordered({
            border = "rounded",
          })
        },
      })

      luasnip.config.setup({})
    end,
  }
}
