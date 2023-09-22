-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})


-- disable virtual_text and underline in code analysis and diagnostic provided by LSPs
vim.diagnostic.config({
    virtual_text = false,
    underline = false
})

require 'lspconfig'.intelephense.setup {
    init_options = {
        globalStoragePath = os.getenv('HOME') .. '/.local/share/intelephense'
    }
}


