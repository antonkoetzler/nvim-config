return {
	'akinsho/toggleterm.nvim',
	config = function()
		local is_windows = vim.loop.os_uname().sysname == "Windows_NT"

		require('toggleterm').setup{
      size = 12,
      open_mapping = [[<c-t>]], -- To open more than one terminal, use 2<c-t> or 3<c-t>.
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 1,
      start_in_insert = true,
      persist_size = true,
      close_on_exit = true,
      direction = "horizontal",
		}
	end,
}
