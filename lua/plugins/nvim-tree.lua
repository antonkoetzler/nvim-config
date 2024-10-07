return {
	'nvim-tree/nvim-tree.lua',
	requires = {
    's1n7ax/nvim-window-picker',
    'nvim-tree/nvim-web-devicons',
  },
	config = function()
		require'nvim-tree'.setup {
			git = {
				enable = false,
			},
			view = {
				side = 'right',
			},
			actions = {
				open_file = {
					window_picker = {
            enable = true,
						picker = function()
							-- Only pick a window if there are multiple windows open
							if vim.fn.winnr('$') > 1 then
								return require('window-picker').pick_window({ hint = 'floating-big-letter' })
							else
								return nil
							end
						end,
					},
				},
			},
		}
	end
}
