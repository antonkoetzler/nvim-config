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
          lineLength = 160,              -- Default line length.
          showTodos = true,              -- Highlights // TODO.
          completeFunctionCalls = false, -- Autocompletes where it completes the arguments of a method/constructor.
        },
      },
      widget_guides = {
        enabled = true, -- Shows lines connecting each widget.
      },
      dev_log = {
        open_cmd = 'botright 15split new', -- Show the console (i.e. that pops up when using :FlutterRun) at the bottom of the screen.
      },
    })
  end,
}

