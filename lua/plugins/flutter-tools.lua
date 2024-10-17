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
        on_attach = require('config.on_attach'),
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
