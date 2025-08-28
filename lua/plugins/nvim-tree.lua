-- File explorer.
return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup({
      view = {
        adaptive_size = true, -- Window takes up as much space as the names in the file explorer need.
      },
      git = {
        enable = false, -- Disable git status tracking
      },
      update_focused_file = {
        enable = true, -- Show the currently focused buffer when the file explorer is opened.
        update_cwd = false, -- Don't update the working directory when focused.
      },
      diagnostics = {
        enable = true,       -- Enable showing diagnostics (errors, warnings, hints, info) in the file explorer.
        show_on_dirs = true, -- Display diagnostics icons on directories based on their children's diagnostics.
        icons = {
          hint = "",       -- Icon to display for hint-level diagnostics.
          info = "",       -- Icon to display for info-level diagnostics.
          warning = "",    -- Icon to display for warning-level diagnostics.
          error = "",      -- Icon to display for error-level diagnostics.
        },
      },
    })
  end,
}
