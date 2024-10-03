return {
	'akinsho/flutter-tools.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'stevearc/dressing.nvim',
	},
	config = function()
		require("flutter-tools").setup {
		lsp = {
			on_attach = require("configs.lsp").on_attach,
			settings = {
				showTodos = true,
			},
		}
	}
	end,
}
