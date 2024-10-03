return {
	-- Find files via text/name.
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	-- File tree.
	{
			"nvim-tree/nvim-tree.lua",
			requires = { "nvim-tree/nvim-web-devicons" },
			config = function()
					require("nvim-tree").setup {}
			end,
	},

	-- Status line.
	{
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
		config = function()
			require('lualine').setup {
				options = {
					theme = 'auto',
					section_separators = '',
					component_separators = '',
				},
				sections = {
					lualine_a = {'mode'},
					lualine_b = {'branch', 'diff', 'diagnostics'},
					lualine_c = {'filename'},
					lualine_x = {'encoding', 'fileformat', 'filetype'},
					lualine_y = {'progress'},
					lualine_z = {'location'}
				},
			}
		end,
	},

	-- Flutter
	{
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
	},

	-- Color schemes
  { "rebelot/kanagawa.nvim" },
	{
		"scottmckendry/cyberdream.nvim",
    config = function()
      vim.cmd("colorscheme cyberdream")
    end,
	}
}
