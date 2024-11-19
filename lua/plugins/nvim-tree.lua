return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    's1n7ax/nvim-window-picker',
  },
  config = function()
    require('nvim-tree').setup({
      view = {
        adaptive_size = true,
      },
      git = {
        enable = false, -- Disable git status tracking
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
    })
  end,
}
