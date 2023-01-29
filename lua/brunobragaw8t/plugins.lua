return require("packer").startup(function(use)
  -- General
  use "wbthomason/packer.nvim"       -- Packer can manage itself
  use "nvim-lua/plenary.nvim"        -- Dependency for multiple plugins
  use "kyazdani42/nvim-web-devicons" -- Icons for multiple purposes

  -- Color schemes
  use "Mofiqul/vscode.nvim" -- Dark+ theme from VS Code

  -- Telescope: fuzzy finder
  use "nvim-telescope/telescope.nvim"

  -- NvimTree: file tree
  use "nvim-tree/nvim-tree.lua"

  -- Lua line: status line
  use "nvim-lualine/lualine.nvim"

  -- Buffer line: tabs
  use "akinsho/bufferline.nvim"

  -- Git
  use "tpope/vim-fugitive"      -- Git commands
  use "lewis6991/gitsigns.nvim" -- Git changes signs

  -- LSP: Language Server Protocol
  use "neovim/nvim-lspconfig"             -- LSP engine
  use "williamboman/mason.nvim"           -- Language server installer
  use "williamboman/mason-lspconfig.nvim" -- Bridge gap between LSP and Mason
  use "j-hui/fidget.nvim"                 -- Useful status updates for LSP
  use "folke/neodev.nvim"                 -- Additional Lua Neovim configuration

  -- CMP: completion
  use "hrsh7th/nvim-cmp"         -- Completion engine (this is a fork to fix typing lags)
  use "L3MON4D3/LuaSnip"         -- Snippet engine
  use "hrsh7th/cmp-nvim-lsp"     -- LSP completions
  use "saadparwaiz1/cmp_luasnip" -- LuaSnip completion source for CMP

  -- Treesitter: syntax highlighting
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
end)
