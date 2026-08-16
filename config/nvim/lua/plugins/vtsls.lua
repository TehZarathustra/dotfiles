return {
  'pmizio/typescript-tools.nvim',
  ft = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },

  dependencies = {
    'nvim-lua/plenary.nvim',
    'neovim/nvim-lspconfig',
  },

  opts = {
    settings = {
      separate_diagnostic_server = true,
      publish_diagnostic_on = 'insert_leave',

      expose_as_code_action = {
        'add_missing_imports',
        'remove_unused_imports',
        'remove_unused',
        'fix_all',
      },
    },
  },

  config = function(_, opts)
    require('typescript-tools').setup(opts)

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if not client or client.name ~= 'typescript-tools' then
          return
        end

        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false

        local map = function(mode, lhs, rhs)
          vim.keymap.set(mode, lhs, rhs, {
            buffer = args.buf,
            silent = true,
          })
        end

        map('n', 'gd', vim.lsp.buf.definition)
        map('n', 'K', vim.lsp.buf.hover)
        map('n', 'gr', vim.lsp.buf.references)
        map('n', 'gi', vim.lsp.buf.implementation)
        map('n', '<leader>ca', vim.lsp.buf.code_action)
      end,
    })
  end,
}
