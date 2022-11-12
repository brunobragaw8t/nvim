-- Reload Neovim when plugins.lua is changed
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Call Packer
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Have Packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

-- Install plugins
return packer.startup(function(use)
  -- General
  use 'wbthomason/packer.nvim'       -- Have Packer manage itself
  use 'nvim-lua/plenary.nvim'        -- Dependency for multiple plugins
  use 'kyazdani42/nvim-web-devicons' -- Icons for multiple purposes

  -- Color schemes
  use 'Mofiqul/vscode.nvim' -- Dark+ theme from VS Code

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'         -- Completion engine
  use 'hrsh7th/cmp-buffer'       -- Buffer completions
  use 'hrsh7th/cmp-path'         -- Path completions
  use 'hrsh7th/cmp-cmdline'      -- Cmdline completions
  use 'saadparwaiz1/cmp_luasnip' -- Snippet completions
  use 'hrsh7th/cmp-nvim-lsp'     -- LSP completions

  -- Snippets
  use 'L3MON4D3/LuaSnip'             -- Snippet engine
  use 'rafamadriz/friendly-snippets' -- A bunch of premade snippets

  -- LSP
  use "neovim/nvim-lspconfig"           -- LSP engine
  use "williamboman/nvim-lsp-installer" -- Language server installer

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use 'p00f/nvim-ts-rainbow'

  -- Autopairs
  use 'windwp/nvim-autopairs' -- Automatically open closing bracket

  -- Comments
  use 'numToStr/Comment.nvim'                       -- Easily comment stuff
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- Context awareness for correct comment syntax

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- nvim-tree
  use 'kyazdani42/nvim-tree.lua' -- File tree

  -- Buffer line
  use 'akinsho/bufferline.nvim'

  -- Status line
  use 'nvim-lualine/lualine.nvim'

  -- Terminal
  use 'akinsho/toggleterm.nvim'
end)
