return {
  -- Essentials
  require('plugins.plenary'),            -- Dependency for many plugins
  require('plugins.nvim-cmp'),           -- Autocompletion
  require('plugins.cmp-nvim-lsp'),       -- LSP config for nvim-comp
  require('plugins.luasnip'),            -- Dependency
  require('plugins.telescope'),          -- Fuzzy finder & live grep
  require('plugins.nvim-tree'),          -- File tree
  require('plugins.nvim-web-devicons'),  -- Icons in plugins that use nerd font icons
  require('plugins.nvim-window-picker'), -- Choosing which window to open a file from nvim-tree
  require('plugins.lualine'),            -- Statusline
  require('plugins.dressing'),           -- LSP code action context menus
  require('plugins.harpoon'),            -- Quicker file navigation than telescope, however used in conjunction with telescope
  require('plugins.bufferline'),         -- Shows a list of active buffers at the top of the screen
  require('plugins.scope'),              -- Separates buffers in bufferline to only display buffers on said tab

  -- Flutter
  require('plugins.flutter-tools'),

  -- Color scheme (default is catppuccin)
  require('plugins.vim-nightfly-colors'),
  require('plugins.catppuccin'),
}
