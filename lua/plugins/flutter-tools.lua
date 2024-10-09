return {
  'akinsho/flutter-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function()
    require('flutter-tools').setup({
      lsp = {
        on_attach = function(client, bufnr)
          local opts = { noremap=true, silent=true }

          vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ge', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)

          vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>fr', '<cmd>FlutterReload<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>fR', '<cmd>FlutterRestart<CR>', opts)
          vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>fs', '<cmd>FlutterRun<CR>', opts)

          vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end,
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
        settings = {
          lineLength = 160,
          showTodos = true,
        },
      },
      -- flutter_run_args = {
      --   "--flavor",
      --   "dev",
      -- },
    })
  end
}
