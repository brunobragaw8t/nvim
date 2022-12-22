local actions = require("telescope.actions")

require("telescope").setup{
	defaults = {
		mappings = {
			i = {
				["<Esc>"] = actions.close,
			},
		},
	},
}

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<Leader>ff", builtin.find_files)
vim.keymap.set("n", "<C-p>", builtin.git_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>gs", builtin.git_status)
