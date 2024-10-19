local opts = { noremap = true, silent = true }

-- General keymappings
vim.api.nvim_set_keymap('i', '<C-H>', '<C-w>', opts)                  -- Ctrl + backspace.
vim.api.nvim_set_keymap('n', '<leader>tc', '<cmd>tabnew<CR>', opts)   -- Create a new tab.
vim.api.nvim_set_keymap('n', '<leader>tx', '<cmd>tabclose<CR>', opts) -- Close a tab.
vim.api.nvim_set_keymap('n', '<leader>tn', '<cmd>tabnext<CR>', opts)  -- Move to the previous tab.
vim.api.nvim_set_keymap('n', '<leader>tp', '<cmd>tabprev<CR>', opts)  -- Move to the next tab.
vim.api.nvim_set_keymap('n', '<leader>x', '<cmd>bd<CR>', opts)        -- Delete a buffer.
vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>bp<CR>', opts)        -- Move to the previous buffer.
vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>bn<CR>', opts)        -- Move to the next buffer.

-- bufferline
vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>BufferLinePickClose<CR>', opts) -- Select a specific buffer to close.

-- Harpoon
vim.api.nvim_set_keymap('n', '<leader>ha', ':lua require(\'harpoon.mark\').add_file()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>hr', ':lua require(\'harpoon.mark\').rm_file()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>hm', ':Telescope harpoon marks<CR>', opts)

-- telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts) -- Find files.
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)  -- Grep for text.
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope buffers<CR>', opts)    -- History of files opened (good when jumping through lots of files).

-- nvim-tree
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', opts) -- Activate file tree.

-- nvim-spectre
vim.api.nvim_set_keymap('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', opts)
vim.api.nvim_set_keymap('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', opts)

-- Flutter
vim.api.nvim_set_keymap('n', '<leader>fr', '<cmd>FlutterReload<CR>', opts)           -- Hot reload.
vim.api.nvim_set_keymap('n', '<leader>fR', '<cmd>FlutterRestart<CR>', opts)          -- Hot restart.
vim.api.nvim_set_keymap('n', '<leader>fs', '<cmd>FlutterRun<CR>', opts)              -- `flutter run`.
vim.api.nvim_set_keymap('n', '<leader>fS', '<cmd>FlutterRun --flavor dev<CR>', opts) -- `flutter run --flavor dev`.
