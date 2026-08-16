local languages = {
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

return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',

  config = function()
    local treesitter = require('nvim-treesitter')

    treesitter.install(languages)

    vim.api.nvim_create_autocmd('FileType', {
      callback = function()
        pcall(vim.treesitter.start)
      end
    })
  end,
}
