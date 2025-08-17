-- Default options variable.
local opts = { noremap = true, silent = true }

-- Leader keys.
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- General shortcuts.
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', opts)           -- Copy with Ctrl + C.
vim.api.nvim_set_keymap('i', '<C-Backspace>', '<C-w>', opts) -- Ctrl + backspace.
vim.api.nvim_set_keymap('i', '<C-h>', '<C-w>', opts)         -- Ctrl + backspace.
vim.api.nvim_set_keymap('n', '<Esc>', '<Esc>:noh<CR>', opts) -- Disables highlighted results of a search.

-- Buffers.
vim.api.nvim_set_keymap('n', '<leader>x', '<cmd>Bdelete<cr>', opts) -- Delete a buffer.
vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>bp<cr>', opts)      -- Move to the previous buffer.
vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>bn<cr>', opts)      -- Move to the next buffer.

-- Tabs.
vim.api.nvim_set_keymap('n', '<leader>tc', '<cmd>tabnew<cr>', opts)   -- Create a new tab.
vim.api.nvim_set_keymap('n', '<leader>tx', '<cmd>tabclose<cr>', opts) -- Close a tab.
vim.api.nvim_set_keymap('n', '<leader>tn', '<cmd>tabnext<cr>', opts)  -- Move to the previous tab.
vim.api.nvim_set_keymap('n', '<leader>tp', '<cmd>tabprev<cr>', opts)  -- Move to the next tab.

-- Splits.
vim.api.nvim_set_keymap('n', '<leader>1', '<C-w>1w', opts)         -- Go to split #1
vim.api.nvim_set_keymap('n', '<leader>2', '<C-w>2w', opts)         -- Go to split #2
vim.api.nvim_set_keymap('n', '<leader>3', '<C-w>3w', opts)         -- Go to split #3
vim.api.nvim_set_keymap('n', '<leader>4', '<C-w>4w', opts)         -- Go to split #4
vim.api.nvim_set_keymap('n', '<leader>5', '<C-w>5w', opts)         -- Go to split #5
vim.api.nvim_set_keymap('t', '<leader>1', '<C-w>1w', opts)         -- Go to split #1
vim.api.nvim_set_keymap('t', '<leader>2', '<C-w>2w', opts)         -- Go to split #2
vim.api.nvim_set_keymap('t', '<leader>3', '<C-w>3w', opts)         -- Go to split #3
vim.api.nvim_set_keymap('t', '<leader>4', '<C-w>4w', opts)         -- Go to split #4
vim.api.nvim_set_keymap('t', '<leader>5', '<C-w>5w', opts)         -- Go to split #5
vim.api.nvim_set_keymap('n', '<leader>s', '<cmd>split<cr>', opts)  -- Create a new window that is horizontally split.
vim.api.nvim_set_keymap('n', '<leader>v', '<cmd>vsplit<cr>', opts) -- Create a new window that is verticall split.

-- Split resizing.
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>10<', opts) -- Resize 10px leftward
vim.api.nvim_set_keymap('n', '<A-h>', '<C-w>10>', opts) -- Resize 10px rightward
vim.api.nvim_set_keymap('n', '<A-j>', '<C-w>+', opts)   -- Resize downward
vim.api.nvim_set_keymap('n', '<A-k>', '<C-w>-', opts)   -- Resize downward

-- Telescope.
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)   -- Fuzzy file search.
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)    -- Fuzzy live grep.
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope buffers<cr><Esc>', opts) -- Buffer list.

-- nvim-tree.
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', opts) -- Toggles the tree.
