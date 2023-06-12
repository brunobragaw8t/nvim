return {
  "lewis6991/gitsigns.nvim",
  commit = "ec4742a7eebf68bec663041d359b95637242b5c3",
  event = "BufReadPre",
  opts = {
    watch_gitdir = {
      interval = 1000,
      follow_files = true,
    },
    attach_to_untracked = true,
    update_debounce = 100,
    status_formatter = nil, -- Use default
  }
}
