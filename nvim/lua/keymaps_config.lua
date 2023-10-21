-- remap of the esc key ( this will remap the esc key to jk in insert mode ) 
vim.keymap.set('v', 'jk', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')

-- remap the <C-c> to <ESC> in insert mode, this is because <C-c> does have some 
-- weird behavior, just look up theprimeagean neovim setup from scratch video.
vim.keymap.set("i", "<C-c>", "<Esc>")

-- remap for the toggleterm plugin
vim.keymap.set('n', '<C-j>', ':terminal<CR>')

-- remap for the ctrlp plugin 
vim.keymap.set('n', '<C-p>', ':CtrlP<CR>')

-- remap to toggle the file explorer 
vim.keymap.set('n', '<C-e>', ':Ex<cr>')

-- remap for the page scroll - keep the cursor at the center 
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', '{', '{zz')
vim.keymap.set('n', '}', '}zz')

-- Keep the searched terms in the middel of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- remap for when moving multiple line in visutal mode - this keeps the indentation right
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- change the behavior of "J" in normal mode, since J makes the line below you go up
-- all to the end of your current line, the problem is that your cursor goes to the end 
-- as well, so with the new behavior we mark the current [p]oint and then we do the J 
-- then we go back to our marked [p]oint.
vim.keymap.set("n", "J", "mpJ`p")

-- make select and paste not loose the clipboad value
-- for more info head towards to : https://youtu.be/w7i4amO_zaE?t=1595
vim.keymap.set("x", "p", [["_dP]])

-- remap CtrlZ to nop since sometimes I forget that I am using
-- nvim and type CtrlZ instead of u for undo. 
vim.keymap.set("n", '<C-z>', '<Nop>')

-- -- Diagnostic keymaps
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Basic Keymaps ]] (from kickstart.nvim)
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


