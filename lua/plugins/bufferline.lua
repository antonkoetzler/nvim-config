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
        diagnostic = "nvim_lsp", -- Shows LSP diagnostics in the bufferline
        diagnostics_indicator = function(count, level, diagnostics, context)
          return "(" .. count .. ")"
        end,
      },
    })
  end,
}
