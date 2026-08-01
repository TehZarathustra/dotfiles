local parsers = {
  'lua',
  'vim',
  'vimdoc',
  'javascript',
  'typescript',
  'tsx',
  'python',
  'haskell',
  'html',
  'scss',
  'css',
  'json',
  'yaml',
  'toml',
  'markdown',
  'markdown_inline',
  'bash',
}

-- @TODO
-- having treesitter adds a lot of dependencies
-- gotta consider opting-out
return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',

  config = function()
    local treesitter = require('nvim-treesitter')

    treesitter.setup()

    -- No-op for parsers that are already installed.
    treesitter.install(parsers)

    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
    })

    vim.keymap.set({ 'n', 'x' }, '<CR>', function()
      require('vim.treesitter._select').select_next(vim.v.count1)
      end, {desc = 'Select next Tree-sitter node'})

    vim.keymap.set('x', '<BS>', function()
      require('vim.treesitter._select').select_prev(
        vim.v.count1
      )
      end, {
      desc = 'Select previous Tree-sitter node',
    })
  end,
}
