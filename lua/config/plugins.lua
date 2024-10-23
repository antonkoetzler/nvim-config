-- Plugin setup for lazy.
require('lazy').setup({
  -- Non-LSP.
  require('plugins.telescope'),    -- Good for file navegation (i.e. fuzzy searching, livegrep, etc).
  require('plugins.lualine'),      -- Status bar with various information at the bottom of the screen.
  require('plugins.nvim-tree'),    -- Project/file tree.
  require('plugins.vim-fugitive'), -- Lots of git features; I mainly use to solve merge conflicts.
  require('plugins.scope'),        -- Makes it so tabline in plugins.bufferline only shows buffers of current tab.
  require('plugins.bufferline'),   -- Tabline at the top of the screen.
  require('plugins.dashboard'),    -- Shows a kitty on startup.
  require('plugins.kommentary'),   -- Allows gc/gcc comments (for commenting lines of code) to work cross-platform.

  -- LSP.
  require('plugins.mason'),          -- Automatic installation of LSPs.
  require('plugins.nvim-lspconfig'), -- Base LSP configuraiton plugin.
  require('plugins.nvim-cmp'),       -- LSP suggestions & autocompletes.

  -- Color schemes.
  require('plugins.vim-moonfly-colors'),
})
