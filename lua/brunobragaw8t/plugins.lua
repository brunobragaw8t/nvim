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
  use "lewis6991/gitsigns.nvim"

  -- LSP: Language Server Protocol
  use "neovim/nvim-lspconfig"   -- LSP engine
  use "williamboman/mason.nvim" -- Language server installer

  -- Treesitter: syntax highlighting
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  -- CMP: completion
  use "hrsh7th/nvim-cmp"         -- Completion engine
  use "L3MON4D3/LuaSnip"         -- Snippet engine
  -- use "saadparwaiz1/cmp_luasnip" -- Snippet completions
  use "hrsh7th/cmp-nvim-lsp"     -- LSP completions
  -- use "hrsh7th/cmp-buffer"       -- Buffer completions
  -- use "hrsh7th/cmp-path"         -- Path completions
  -- use "hrsh7th/cmp-cmdline"      -- Cmdline completions

  -- Null-ls: format & lint
  use "jose-elias-alvarez/null-ls.nvim"
end)
