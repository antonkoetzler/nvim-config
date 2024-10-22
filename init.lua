vim.o.number = true         -- Show numbers.
vim.o.shiftwidth = 2        -- Tab length.
vim.o.expandtab = true      -- Create individual spaces instead of the tab character.
vim.o.autoindent = true     -- Preserves previous line's indent.
vim.o.smartindent = true    -- Indets on {.
vim.o.autoread = true       -- Reload file when it is editted outside of nvim.
vim.o.wrap = false          -- Don't wrap text when it doesn't fit on the screen.
vim.o.hlsearch = false      -- Don't highlight every instance of what was searched.
vim.o.relativenumber = true -- Only show line number in the file of the highlighted line.
vim.o.bufhidden = 'wipe'    -- Don't keep empty buffers when changing buffers.
vim.o.signcolumn = 'yes'    -- Reserve a space in the gutter.
vim.o.splitright = true     -- When vsplit is used, it focuses on the new split on the right.
vim.o.hidden = true         -- Closing buffer in second tab issue.

require('config.lazy')
require('config.keymaps')

-- Color schemes.
vim.cmd('colorscheme nightfly')
-- vim.cmd('colorscheme catppuccin')
