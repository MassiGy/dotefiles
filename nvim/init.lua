-- See `:help mapleader`
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- make nvim load faster
require('impatient_config')

-- get lazy.nvim setup and install all our plugins
require('plugins_config')

-- get all the vim options configuration
require('options_config')

-- get all our keymaps and keybindings
require('keymaps_config')

-- setup treesitter for syntax highlighting (must be done after the plugins import)
require('treesitter_config')

-- require the completion configuration (must be done after the plugins import and before mason configuration)
require('lsp_config')

-- get our colorscheme
require('colorscheme_config')

-- setup some additionnal tweaks for better personal experience
require('tweaks_config')


