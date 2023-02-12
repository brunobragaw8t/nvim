require("rest-nvim").setup({
  result_split_in_place = true,
})

vim.keymap.set("n", "<Leader>hs", ":lua require('rest-nvim').run()<CR>", { silent = true })
