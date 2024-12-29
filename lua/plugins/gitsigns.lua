return {
  "lewis6991/gitsigns.nvim",
  event = "BufReadPre",
  opts = {
    watch_gitdir = {
      interval = 1000,
      follow_files = true,
    },
    attach_to_untracked = true,
    update_debounce = 100,
    status_formatter = nil, -- Use default
  },
}
