return {
    'nvim-treesitter/nvim-treesitter',
    -- TODO: this conf using deprecated API, gotta move to new api
    -- https://github.com/nvim-treesitter/nvim-treesitter/discussions/7927
    -- https://github.com/nvim-treesitter/nvim-treesitter/discussions/7901
    -- for now specifying master branch is enough to keep the current conf afloat
    branch = 'master',
    priority = 100,
    config = function()
        require('nvim-treesitter.configs').setup {
            -- Install these parsers by default
            ensure_installed = {
                'lua', 'vim', 'vimdoc', 'javascript', 'typescript', 'python', 'haskell',
                'html', 'scss', 'css', 'json', 'yaml', 'toml', 'markdown', 'bash'
            },
            -- Automatically install missing parsers
            -- (i.e i've opened a file and don't have parser for it)
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    -- <CR> Enter
                    init_selection = '<CR>',
                    node_incremental = '<CR>',
                    -- <BS> Backspace
                    node_decremental = '<BS>',
                },
            },
        }
    end
}
