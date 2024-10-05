return {
	'nvim-tree/nvim-tree.lua',
	requires = { 'nvim-tree/nvim-web-devicons' },
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
						picker = require('window-picker').pick_window(),
					},
				},
			},
		}
	end
}
