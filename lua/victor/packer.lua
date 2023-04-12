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


  -- Let's get in troubleee
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Let's add the Primeagen's harpoon package
  use('theprimeagen/harpoon')

  -- Undo tree
  use('mbbill/undotree')

  -- Cool Git integrations
  use('tpope/vim-fugitive')
  use('lewis6991/gitsigns.nvim')


  -- Make it more welcoming
  use {
    'goolord/alpha-nvim',
    config = function()
      require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
    end
  }

  use({
    'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    config = function()
      -- require('my_statusline')
    end,
    -- some optional icons
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  })

  -- Floating terminal window
  use('voldikss/vim-floaterm')

  -- If life get's too hard
  use('eandrju/cellular-automaton.nvim')

  -- Components for galaxyline
  use {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter"
  }

  -- Cool icons for the terminal
  use('ryanoasis/vim-devicons')

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

  -- Behavior on buffer delete
  use('famiu/bufdelete.nvim');

  -- Commenting is now easier
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }

  -- Nice browser window for files
  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")

  -- A treesitter to make everything blazingly fast here
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')

  -- Auto pairs to make <> and {} somewhat easier
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use("windwp/nvim-ts-autotag")
  -- An easier way to configure my LSP
  use('neovim/nvim-lspconfig')

  -- Beautiful rust tools
  use('simrat39/rust-tools.nvim')
  -- A formatter to make things easier
  use('mhartington/formatter.nvim')
end)
