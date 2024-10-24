-- Plugin setup for lazy.
require('lazy').setup({
  require('plugins.telescope'),      -- Good for file navegation (i.e. fuzzy searching, livegrep, etc).
  require('plugins.lualine'),        -- Status bar with various information at the bottom of the screen.
  require('plugins.nvim-tree'),      -- Project/file tree.
  require('plugins.vim-fugitive'),   -- Lots of git features; I mainly use to solve merge conflicts.
  require('plugins.scope'),          -- Makes it so tabline in plugins.bufferline only shows buffers of current tab.
  require('plugins.bufferline'),     -- Tabline at the top of the screen.
  require('plugins.dashboard'),      -- Shows a kitty on startup.
  require('plugins.kommentary'),     -- Allows gc/gcc comments (for commenting lines of code) to work cross-platform.
  require('plugins.nvim-lspconfig'), -- LSP: Base configuraiton plugin.
  require('plugins.nvim-cmp'),       -- LSP suggestions & autocompletes.
  require('plugins.mason'),          -- LSP: Automatic installation of LSPs.
  require('plugins.flutter-tools'),  -- LSP & other goodies for Flutter.

  -- Color schemes.
  require('plugins.vim-moonfly-colors'),
  require('plugins.vim-nightfly-colors'),
})
