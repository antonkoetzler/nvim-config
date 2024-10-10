return {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons',
    's1n7ax/nvim-window-picker',
  },
  config = function()
    require('nvim-tree').setup({
      git = {
        enable = false,
      },
      view = {
        side = 'right',
        adaptive_size = true,
      },
      actions = {
        open_file = {
          window_picker = {
            enable = true,
            picker = function()
              -- Only pick a window if there are multiple windows open
              if vim.fn.winnr('$') > 1 then
                return require('window-picker').pick_window({
                  hint = 'floating-big-letter',
                })
              else
                return nil
              end
            end,
          },
        },
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
      },
      update_focused_file = {
        enable = true,     -- Enable focusing on the current file
        update_cwd = true, -- Update the tree to match the current working directory
        ignore_list = {},  -- List of file types to ignore (optional)
      },
    })
  end,
}
