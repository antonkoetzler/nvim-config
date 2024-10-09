local opts = { noremap=true, silent=true }

-- telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts) -- Find files.
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)  -- Grep for text.
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope buffers<cr>', opts)    -- History of files opened (good when jumping through lots of files).

-- nvim-tree
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', opts) -- Activate file tree.

-- General keymappings
vim.api.nvim_set_keymap('i', '<C-H>', '<C-w>', opts) -- Ctrl + backspace.

-- Flutter
vim.api.nvim_set_keymap('n', '<leader>fr', ':echo "FlutterReload"<cmd>FlutterReload<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>fR', ':echo "FlutterRestart"<cmd>FlutterRestart<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>fs', ':echo "FlutterRun"<cmd>FlutterRun<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>fS', ':echo "FlutterRun --flavor dev"<cmd>FlutterRun --flavor dev<CR>', opts)
