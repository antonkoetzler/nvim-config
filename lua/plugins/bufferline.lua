return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'tiagovla/scope.nvim',
  },
  config = function()
    require('bufferline').setup({
      options = {
        -- always_show_bufferline = false,
        mode = 'buffers',
        max_name_length = 50,
        diagnostics = 'nvim_lsp',
        --[[ diagnostics_indicator = function(_, _, diagnostics_dict, _)
          local s = " "
          for severity, num in pairs(diagnostics_dict) do
            if num > 0 then
              local icon = severity == "error" and " " or (severity == "warning" and " " or " ")
              s = s .. num .. icon
            end
          end
          return s
        end, ]]
      },
    })
  end,
}
