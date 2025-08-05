-- Basic vim settings.
vim.o.shiftwidth      = 2                                                          -- 2 character tab length.
vim.o.expandtab       = true                                                       -- Makes tabs spaces and not one character.
vim.o.number          = true                                                       -- Numbers on the side of each file.
vim.o.relativenumber  = true                                                       -- Actual line number only on selected line, other lines are amount of lines from said line.
vim.o.splitright      = true                                                       -- When :vsplit is used, it will focus on the newly created split.
vim.o.smartindent     = true                                                       -- Indent based on current column number of cursor.
vim.opt.termguicolors = true                                                       -- Enable terminal colors if said terminal has them.
vim.o.autochdir       = false                                                      -- Stop plugins from changing the working directory.
vim.api.nvim_create_autocmd('VimResized', { pattern = '*', command = 'wincmd =' }) -- Proportionally resize splits when terminal window is resized.
