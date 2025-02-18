return {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-n>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      }),
      sources = {
        { name = "nvim_lsp" },
      },
      window = {
        completion = cmp.config.window.bordered({
          border = "rounded",
        }),
        documentation = cmp.config.window.bordered({
          border = "rounded",
        }),
      },
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
          vim.snippet.stop()
        end,
      },
    })
  end,
}
