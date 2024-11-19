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
        diagnostic = "nvim_lsp",
        diagnostics_indicator = function(count, _, __, ___)
          return "(" .. count .. ")"
        end,
        max_name_length = 30,
      },
    })
  end,
}
