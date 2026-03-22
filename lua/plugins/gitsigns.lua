return {
  "lewis6991/gitsigns.nvim",
  opts = {},
  config = function(_, opts)
    local gs = require("gitsigns")
    gs.setup(opts)

    vim.keymap.set({ "n", "v" }, "<Leader>gs", gs.stage_hunk, { desc = "Stage hunk" })
    vim.keymap.set({ "n", "v" }, "<Leader>gr", gs.reset_hunk, { desc = "Reset hunk" })
    vim.keymap.set("n", "<Leader>gb", gs.toggle_current_line_blame, { desc = "Toggle blame line" })
    vim.keymap.set("n", "<Leader>gx", gs.toggle_deleted, { desc = "Toggle deleted" })
  end,
}
