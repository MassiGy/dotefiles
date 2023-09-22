-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`

require('nvim-treesitter.configs').setup {
    -- add languages to be installed here that you want installed for treesitter
    -- (I disabled it to make the nvim startup faster)
    -- ensure_installed = {
    --     'html', 'css', 'php', 'javascript',  'sql', 'markdown',  'cpp', 'lua',
    --     'python', 'typescript', 'vimdoc', 'vim'
    -- },

    -- autoinstall languages that are not installed.
    auto_install = false,
    highlight = { enable = true },
    indent = { enable = true },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<c-space>',
            node_incremental = '<c-space>',
        },
    },

    textobjects = {
        -- treesitter objects selection helps to select blocks of objects,
        -- even though this is useful, i choosed to disabled it since i do not know
        -- the diffrence with the incremental_selection above.
        select = {
            enable = false,
            -- automatically jump forward to textobj, similar to targets.vim
            lookahead = false,
        },
        move = {
            enable = false,
        },
    },
}


