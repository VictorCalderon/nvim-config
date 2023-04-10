-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Add Packer telescope for fuzzy finding and file grepping (needs ripgrep)
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Add a theme to this beatiful tool
  use({ 'rebelot/kanagawa.nvim', as = 'kanagawa' })
  use({ 'folke/tokyonight.nvim', as = 'tokyonight' })

  -- Let's add the Primeagen's harpoon package
  use('theprimeagen/harpoon')

  -- Undo tree
  use('mbbill/undotree')

  -- Cool Git integrations
  use('tpope/vim-fugitive')
  use('lewis6991/gitsigns.nvim')

  -- Add Language Server Support
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }

  }

  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }

  -- A treesitter to make everything blazingly fast here
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use("windwp/nvim-ts-autotag")
  use('neovim/nvim-lspconfig')
  use('simrat39/rust-tools.nvim')
  use('mhartington/formatter.nvim')
end)
