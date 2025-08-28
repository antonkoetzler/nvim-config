-- Flutter LSP.
return {
  'akinsho/flutter-tools.nvim',
  dependencies = {
    'hrsh7th/nvim-cmp',
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  config = function()
    require('flutter-tools').setup({
      -- Windows fix for when the LSP isn't working.
      -- flutter_lookup_cmd = 'cmd.exe /C echo %USERPROFILE%\\fvm\\default',
      lsp = {
        settings = {
          lineLength = 120,              -- Default line length.
          showTodos = true,              -- Highlights // TODO.
          completeFunctionCalls = false, -- Autocompletes where it completes the arguments of a method/constructor.
        },
        color = {
          enabled = true,       -- Enables both virtual text and background coloring.
          background = true,    -- show bg-colored highlight.
          foreground = false,   -- optional, hides foreground.
          virtual_text = false, -- Don't show square of color on the right
        },
      },
      widget_guides = {
        enabled = true, -- Shows lines connecting each widget.
      },
    })
  end,
}
