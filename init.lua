vim.o.number = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.autoread = true
vim.o.wrap = false
vim.o.colorcolumn = '160'
vim.o.hlsearch = false
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.bufhidden = 'wipe'

require('config.lazy')
require('config.keymaps')

vim.cmd('colorscheme nightfly')
-- vim.cmd('colorscheme catppuccin')
