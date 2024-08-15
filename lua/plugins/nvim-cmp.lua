local cmp = require("cmp")

return {
  "hrsh7th/nvim-cmp",
  opts = {
    completion = {
      completeopt = "menu,menuone,noinsert,noselect",
    },
    mapping = cmp.mapping.preset.insert({
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-n>"] = cmp.mapping.complete(),
      ["<CR>"] = LazyVim.cmp.confirm({ select = false }),
      ["<Tab>"] = cmp.mapping.select_next_item(),
      ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    }),
    window = {
      completion = {
        winhighlight = "Normal:None,FloatBorder:None,Search:None",
        winblend = 0,
        border = "rounded",
      },
      documentation = {
        winhighlight = "Normal:None,FloatBorder:None,Search:None",
        winblend = 0,
        border = "rounded",
      },
    },
  },
}
