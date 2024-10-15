return {
  'akinsho/flutter-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'stevearc/dressing.nvim',
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
          vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)

          vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })

          -- Keep LSP active in unfocused buffers.
          vim.api.nvim_create_autocmd('BufLeave', {
            pattern = '*.dart',
            callback = function()
              local bufnr = vim.fn.bufnr()
              local clients = vim.lsp.get_active_clients()
              for _, client in pairs(clients) do
                if client.attached_buffers[bufnr] then
                  vim.lsp.buf_attach_client(bufnr, client.id)
                end
              end
            end,
          })
        end,
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
        settings = {
          lineLength = 160,
          showTodos = true,
        },
      },
      widget_guides = {
        enabled = true,
      },
      dev_log = {
        open_cmd = 'botright 15split new'
      },
    })
  end,

}
