vim.o.number = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = false
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.autoread = true
vim.opt.colorcolumn = "160"

-- Load lazy.nvim
require("configs.lazy")

-- Load keymaps
require("configs.keymaps")

