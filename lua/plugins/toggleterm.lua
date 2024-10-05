return {
	'akinsho/toggleterm.nvim',
	config = function()
		require('toggleterm').setup{
			size = 20,
			open_mapping = [[<c-t>]],
			shade_filetypes = {},
			shade_terminals = true,
			start_in_insert = true,
			insert_mappings = true,
			terminal_mappings = true,
		}
	end,
}
