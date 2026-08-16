return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT',
            },
            diagnostics = {
              globals = { 'vim' },
            },
          },
        },
      })
      vim.lsp.enable('oxlint')
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('oxfmt')
    end,
  },
}
