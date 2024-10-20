return {
  -- Essentials
  require('plugins.plenary'),            -- Dependency for many plugins.
  require('plugins.nvim-lspconfig'),     -- Base LSP config plugin for nvim.
  require('plugins.nvim-cmp'),           -- Autocompletion.
  require('plugins.cmp-nvim-lsp'),       -- LSP config for nvim-comp.
  require('plugins.cmp-buffer'),         -- nvim-cmp dependency for buffer text completion.
  require('plugins.cmp-path'),           -- nvim-cmp dependency for path completion.
  require('plugins.mason'),              -- Automatic LSP installations.
  require('plugins.lsp-zero'),           -- Good LSP defaults and easy installation.
  require('plugins.luasnip'),            -- Dependency for LSPs.
  require('plugins.telescope'),          -- Fuzzy finder & live grep.
  require('plugins.nvim-tree'),          -- File tree.
  require('plugins.nvim-web-devicons'),  -- Icons in plugins that use nerd font icons.
  require('plugins.nvim-window-picker'), -- Choosing which window to open a file from nvim-tree.
  require('plugins.lualine'),            -- Statusline.
  require('plugins.dressing'),           -- LSP code action context menus.
  require('plugins.harpoon'),            -- Quicker file navigation than telescope, however used in conjunction with telescope.
  require('plugins.bufferline'),         -- Shows a list of active buffers at the top of the screen.
  require('plugins.scope'),              -- Separates buffers in bufferline to only display buffers on said tab.
  require('plugins.vim-fugitive'),       -- Git services (I use it to resolve merge conflicts).
  require('plugins.nvim-spectre'),       -- Multifile renames.
  require('plugins.transparent'),        -- Transparent background.
  require('plugins.kommentary'),         -- Multiline comments.
  require('plugins.dashboard'),          -- Dashboard.

  -- Flutter.
  require('plugins.flutter-tools'),

  -- Color scheme.
  require('plugins.vim-nightfly-colors'),
  require('plugins.catppuccin'),
}
