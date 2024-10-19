return {
  'nvim-pack/nvim-spectre',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-pack/nvim-spectre',
  },
  config = function()
    require('spectre').setup()
  end,
}
