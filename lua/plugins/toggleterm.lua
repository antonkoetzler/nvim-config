return {
	'akinsho/toggleterm.nvim',
	config = function()
		local is_windows = vim.loop.os_uname().sysname == "Windows_NT"

		require('toggleterm').setup{
			size = 20,
			open_mapping = [[<c-t>]],
			shade_filetypes = {},
			shade_terminals = true,
			start_in_insert = true,
			insert_mappings = true,
			terminal_mappings = true,
			shell = is_windows and '"C:\\Program Files\\Git\\bin\\bash.exe"' or nil,
		}
	end,
}
