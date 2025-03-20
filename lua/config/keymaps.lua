-- All key mappings & shortcuts (doesn't include shortcuts for LSP actions).

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
vim.api.nvim_set_keymap('n', '<leader>x', '<cmd>Bdelete<cr>', opts)                 -- Delete a buffer.
vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>bp<cr>', opts)                      -- Move to the previous buffer.
vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>bn<cr>', opts)                      -- Move to the next buffer.
vim.api.nvim_set_keymap('n', '<leader>v', '<cmd>vsplit<cr><C-w>w<cmd>bp<cr>', opts) -- Split a buffer to the right.

-- Tabs.
vim.api.nvim_set_keymap('n', '<leader>tc', '<cmd>tabnew<cr>', opts)   -- Create a new tab.
vim.api.nvim_set_keymap('n', '<leader>tx', '<cmd>tabclose<cr>', opts) -- Close a tab.
vim.api.nvim_set_keymap('n', '<leader>tn', '<cmd>tabnext<cr>', opts)  -- Move to the previous tab.
vim.api.nvim_set_keymap('n', '<leader>tp', '<cmd>tabprev<cr>', opts)  -- Move to the next tab.

-- Split navigation.
vim.api.nvim_set_keymap('n', '<leader>1', '<C-w>1w', opts)
vim.api.nvim_set_keymap('n', '<leader>2', '<C-w>2w', opts)
vim.api.nvim_set_keymap('n', '<leader>3', '<C-w>3w', opts)
vim.api.nvim_set_keymap('n', '<leader>4', '<C-w>4w', opts)
vim.api.nvim_set_keymap('n', '<leader>5', '<C-w>5w', opts)
vim.api.nvim_set_keymap('t', '<leader>1', '<C-w>1w', opts)
vim.api.nvim_set_keymap('t', '<leader>2', '<C-w>2w', opts)
vim.api.nvim_set_keymap('t', '<leader>3', '<C-w>3w', opts)
vim.api.nvim_set_keymap('t', '<leader>4', '<C-w>4w', opts)
vim.api.nvim_set_keymap('t', '<leader>5', '<C-w>5w', opts)

-- Split resizing.
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>10<', opts) -- Resize 10px leftward
vim.api.nvim_set_keymap('n', '<A-h>', '<C-w>10>', opts) -- Resize 10px rightward
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>+', opts)   -- Resize downward
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>-', opts)   -- Resize downward

-- bufferline.
vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>BufferLinePickClose<cr>', opts) -- Select a specific buffer to close.
vim.api.nvim_set_keymap('n', '<leader>op', '<cmd>BufferLineMovePrev<cr>', opts) -- Moves the selected buffer to the left of the buffer line.
vim.api.nvim_set_keymap('n', '<leader>on', '<cmd>BufferLineMoveNext<cr>', opts) -- Moves the selected buffer to the right of the buffer line.

-- Telescope.
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)   -- Fuzzy file search.
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)    -- Fuzzy live grep.
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope buffers<cr><Esc>', opts) -- Buffer list.

-- nvim-tree.
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', opts)

-- Terminal (and toggleterm).
local term_count = 0
function _G.new_terminal()
  term_count = term_count + 1
  vim.cmd(term_count .. 'ToggleTerm direction=tab')
end

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', opts)
vim.api.nvim_set_keymap('n', '<C-t>', '<cmd>ToggleTerm direction=tab<CR>', opts)        -- Toggle terminal (creates a new one or opens existing terminal).
vim.api.nvim_set_keymap('t', '<C-t>', '<cmd>ToggleTerm direction=tab<CR>', opts)        -- Toggle terminal (creates a new one or opens existing terminal).
vim.api.nvim_set_keymap('n', '<C-A-t>', '<cmd>lua new_terminal()<CR>', opts)            -- Create new terminal(s).
vim.api.nvim_set_keymap('t', '<C-A-t>', '<C-\\><C-n><cmd>lua new_terminal()<CR>', opts) -- Create new terminal(s).
