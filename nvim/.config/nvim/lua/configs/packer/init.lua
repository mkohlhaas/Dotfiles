return require("packer").startup(function()
  use("wbthomason/packer.nvim") --> packer plugin manager
  use 'nvim-treesitter/nvim-treesitter'
  -- Highly extendable fuzzy finder
  -- :checkhealth telescope
  -- sudo xbps-install ripgrep fd
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'gruvbox-community/gruvbox'
  use 'nelstrom/vim-visual-star-search'        -- Start a * or # search from a visual block.
  use 'romainl/vim-cool'                       -- A very simple plugin that makes hlsearch more useful.
  use 'machakann/vim-highlightedyank'          -- Make the yanked region apparent!
  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
  use { 'Mephistophiles/surround.nvim', config = function() require"surround".setup { mappings_style = "sandwich" } end }
  use { 'folke/trouble.nvim', requires = "kyazdani42/nvim-web-devicons", config = function() require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
   } end }
  use 'rhysd/vim-grammarous'                   -- powerful grammar checker for Vim
  use 'tjdevries/vlog.nvim'                    -- logger for neovim
  use 'mbbill/undotree'
  use { 'glts/vim-textobj-comment', requires = 'kana/vim-textobj-user' }
  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
  }

  use 'honza/vim-snippets'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'dcampos/nvim-snippy'
  use 'dcampos/cmp-snippy'

  use 'Joakker/vim-antlr4'
  use 'fatih/vim-go'
  use 'preservim/tagbar'
  use 'airblade/vim-gitgutter'

  -- use 'dart-lang/dart-vim-plugin'
  use 'thosakwe/vim-flutter'
  use 'natecraddock/workspaces.nvim'

  -- Unicode
  use 'chrisbra/unicode.vim'

  -- GLSL
  use 'tikhomirov/vim-glsl'
end)
