return {
  'nvim-lualine/lualine.nvim',
  requires = {
    'nvim-tree/nvim-web-devicons',
    opt = true,
  },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'auto',
        section_separators = '',
        component_separators = '',
      },
      sections = {
        lualine_a = {
          'mode',
        },
        lualine_b = {
          'branch',
          'diff',
          'diagnostics',
        },
        lualine_c = {
          {
            'filename',
            path = 2
          },
        },
        lualine_x = {
          'encoding',
          'fileformat',
          'filetype',
        },
        lualine_y = {
          'progress',
        },
        lualine_z = {
          'location',
        }
      },
    }
  end,
}
