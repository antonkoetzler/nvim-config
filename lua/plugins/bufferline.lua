return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'tiagovla/scope.nvim',
  },
  config = function()
    require('bufferline').setup({
      options = {
        mode = 'buffers',
        max_name_length = 50,
      },
    })
  end,
}
