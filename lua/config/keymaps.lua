-- All key mappings & shortcuts (doesn't include shortcuts for LSP actions).

local opts = { noremap = true, silent = true }

-- Leader keys.
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Basic shortcuts.
vim.api.nvim_set_keymap('i', '<C-H>', '<C-w>', opts) -- Make ctrl + backspace work.

-- Telescope.
vim.api.nvim_set_keymap('n', '<LEADER>ff', '<CMD>Telescope find_files<CR>', opts) -- Fuzzy file search.
vim.api.nvim_set_keymap('n', '<LEADER>fg', '<CMD>Telescope live_grep<CR>', opts)  -- Fuzzy live grep.
vim.api.nvim_set_keymap('n', '<LEADER>fh', '<CMD>Telescope buffers<CR>', opts)    -- Buffer list.

-- nvim-tree.
vim.api.nvim_set_keymap('n', '<LEADER>e', '<CMD>:NvimTreeToggle<CR>', opts) -- Toggle the tree.
