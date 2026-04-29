-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- This tells Lazy: "I don't need a new plugin, just run this code"
  {
    'neovim/nvim-lspconfig',
    config = function()
      vim.lsp.enable 'ruff'
      vim.lsp.enable 'pyright'

      vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*.py',
        callback = function()
          vim.lsp.buf.code_action {
            context = { only = { 'source.fixAll.ruff' }, diagnostics = {} },
            apply = true,
          }
          vim.lsp.buf.format { async = false }
        end,
      })
    end,
  },
}
