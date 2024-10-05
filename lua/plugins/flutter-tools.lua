return {
	'akinsho/flutter-tools.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'stevearc/dressing.nvim',
	},
	config = function()
		require("flutter-tools").setup {
			widget_guides = {
				enabled = true,
			},
			lsp = {
				on_attach = require("configs.lsp").on_attach,
				settings = {
					lineLength = 160,
					showTodos = true,
				},
			}
		}
	end,
}
