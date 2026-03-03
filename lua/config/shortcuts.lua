-- Helper variables.
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader keys.
vim.g.mapleader = ' '      -- Set space as leader key.
vim.g.maplocalleader = ' ' -- Set space as local leader key.

-- General shortcuts.
map('v', '<C-c>', '"+y', opts)           -- Copy with Ctrl + C.
map('n', '<C-v>', '"+p', opts)           -- Normal mode paste
map('i', '<C-v>', '<C-r>+', opts)        -- Insert mode paste
map('c', '<C-v>', '<C-r>+', opts)        -- Command mode paste
map('v', '<C-v>', '"+p', opts)           -- Visual mode paste
map('i', '<C-Backspace>', '<C-w>', opts) -- Ctrl + backspace.
map('i', '<C-h>', '<C-w>', opts)         -- Ctrl + backspace (terminal fallback).
map('n', '<Esc>', '<Esc>:noh<CR>', opts) -- Disables highlighted results of a search.

-- Buffers.
map('n', '<leader>x', '<cmd>Bdelete<cr>', opts) -- Delete a buffer.
map('n', '<leader>p', '<cmd>bp<cr>', opts)       -- Move to the previous buffer.
map('n', '<leader>n', '<cmd>bn<cr>', opts)       -- Move to the next buffer.

-- Tabs.
map('n', '<leader>tc', '<cmd>tabnew<cr>', opts)   -- Create a new tab.
map('n', '<leader>tx', '<cmd>tabclose<cr>', opts) -- Close a tab.
map('n', '<leader>tn', '<cmd>tabnext<cr>', opts)  -- Move to the next tab.
map('n', '<leader>tp', '<cmd>tabprev<cr>', opts)  -- Move to the previous tab.

-- Splits.
map('n', '<leader>1', '<C-w>1w', opts) -- Go to split #1
map('n', '<leader>2', '<C-w>2w', opts) -- Go to split #2
map('n', '<leader>3', '<C-w>3w', opts) -- Go to split #3
map('n', '<leader>4', '<C-w>4w', opts) -- Go to split #4
map('n', '<leader>5', '<C-w>5w', opts) -- Go to split #5
map('t', '<leader>1', '<C-w>1w', opts) -- Go to split #1 (terminal)
map('t', '<leader>2', '<C-w>2w', opts) -- Go to split #2 (terminal)
map('t', '<leader>3', '<C-w>3w', opts) -- Go to split #3 (terminal)
map('t', '<leader>4', '<C-w>4w', opts) -- Go to split #4 (terminal)
map('t', '<leader>5', '<C-w>5w', opts) -- Go to split #5 (terminal)
map('n', '<leader>s', '<cmd>split<cr>', opts)  -- Create a new horizontal split.
map('n', '<leader>v', '<cmd>vsplit<cr>', opts) -- Create a new vertical split.

-- Split resizing (Alt instead of Ctrl to avoid conflicts).
map('n', '<M-l>', '<C-w>10<', opts) -- Resize 10 cols leftward (narrower)
map('n', '<M-h>', '<C-w>10>', opts) -- Resize 10 cols rightward (wider)
map('n', '<M-j>', '<C-w>+', opts)   -- Resize taller
map('n', '<M-k>', '<C-w>-', opts)   -- Resize shorter

-- telescope.
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)   -- Fuzzy file search.
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)    -- Fuzzy live grep.
map('n', '<leader>fh', '<cmd>Telescope buffers<cr><Esc>', opts) -- Buffer list.

-- themes.
map('n', '<leader>ft', '<cmd>Themery<cr>', opts) -- Open theme picker (live preview, persists).

-- nvim-tree.
map('n', '<leader>e', ':NvimTreeToggle<cr>', opts) -- Toggles the file explorer tree.

-- vim-fugitive.
map('n', '<leader>gdh', '<cmd>Gdiffsplit<CR>', opts)  -- Diff current buffer (horizontal).
map('n', '<leader>gdv', '<cmd>Gvdiffsplit<CR>', opts) -- Diff current buffer (vertical).
