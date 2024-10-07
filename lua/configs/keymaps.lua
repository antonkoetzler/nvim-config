local opts = { noremap=true, silent=true }

-- telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts) -- Find files.
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)  -- Grep for text.
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope buffers<cr>', opts)    -- History of files opened (good when jumping through lots of files).

-- nvim-tree
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', opts) -- Activate file tree.

-- lualine
vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>tabnew<cr>', opts) -- Create tab.
vim.api.nvim_set_keymap('n', '<leader>x', '<cmd>bd<cr>', opts)     -- Close a tab.

-- General keymappings
vim.api.nvim_set_keymap('i', '<C-H>', '<C-w>', opts) -- Ctrl + backspace.
