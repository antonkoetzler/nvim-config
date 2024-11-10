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
        side = 'right',
      },
      git = {
        enable = false,  -- Disable git status tracking
      },
    })
  end,
}
