return {
	's1n7ax/nvim-window-picker',
	name = 'window-picker',
	config = function()
		require('window-picker').setup({
			hint = 'statusline-winbar',
		})
	end,
}
