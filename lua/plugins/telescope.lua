return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('telescope').setup({
      defaults = {
        mappings = {
          i = {
            ['<c-d>'] = require('telescope.actions').delete_buffer, -- In insert mode
          },
          n = {
            ['<c-d>'] = require('telescope.actions').delete_buffer, -- In normal mode
          },
        },
      },
    })
  end,
}
