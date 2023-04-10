-- Some configurations

-- Here are the relative numbers to make it easier to move.
vim.opt.nu = true
vim.opt.relativenumber = true

-- Let's do something about tabs and tab spacing, two is more than okay
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Smart indentation
vim.opt.smartindent = true


-- No wrapping please
vim.opt.wrap = false

-- Some cool stuff about how memory is manage in this buffers and undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Highlight search and stuff
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Good colors
vim.opt.termguicolors = true

-- Scroll options
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Fast update time
vim.opt.updatetime = 50

-- Set special things for themes
-- tokyonight
vim.g.tokyonight_style = "night"
vim.g.tokyonight_transparent = true
vim.g.tokyonight_colors = { bg_float = "none" }

-- Set default to utf
vim.g.encoding = "UTF-8"

-- Let's place the leader key here with all the other sets
vim.g.mapleader = " "
