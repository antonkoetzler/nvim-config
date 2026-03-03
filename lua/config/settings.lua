-- Vim settings.
vim.o.shiftwidth      = 2                                                          -- 2 character tab length.
vim.o.tabstop         = 2                                                          -- Match shiftwidth.
vim.o.softtabstop     = 2                                                          -- Match shiftwidth.
vim.o.expandtab       = true                                                       -- Makes tabs spaces and not one character.
vim.o.number          = true                                                       -- Numbers on the side of each file.
vim.o.relativenumber  = true                                                       -- Actual line number only on selected line, other lines are amount of lines from said line.
vim.o.splitright      = true                                                       -- When :vsplit is used, it will focus on the newly created split.
vim.o.splitbelow      = true                                                       -- When :split is used, it will focus on the newly created split.
vim.o.smartindent     = true                                                       -- Indent based on current column number of cursor.
vim.o.breakindent     = true                                                       -- Wrapped lines maintain indent.
vim.o.undofile        = true                                                       -- Persistent undo across sessions.
vim.o.ignorecase      = true                                                       -- Case-insensitive search...
vim.o.smartcase       = true                                                       -- ...unless capital letter typed.
vim.opt.termguicolors = true                                                       -- Enable terminal colors if said terminal has them.
vim.api.nvim_create_autocmd('VimResized', { pattern = '*', command = 'wincmd =' }) -- Proportionally resize splits when terminal window is resized.
vim.g.neovide_cursor_animation_length = 0                                          -- Disabling Neovide animations
vim.g.neovide_scroll_animation_length = 0                                          -- Disabling Neovide animations
vim.g.neovide_cursor_animate_in_insert_mode = false                                -- Disabling Neovide animations
vim.g.neovide_cursor_animate_command_line = false                                  -- Disabling Neovide animations
