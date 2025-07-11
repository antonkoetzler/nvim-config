-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out,                            'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  require('plugins.telescope'),       -- Good for file navegation (i.e. fuzzy searching, livegrep, etc).
  require('plugins.diffview'),        -- Git features that are alike to VSCode's, for example, merge resolver.
  require('plugins.scope'),           -- Separate buffers shown in telescope by tab.
  require('plugins.kommentary'),      -- Allows gc/gcc comments (for commenting lines of code) to work cross-platform.
  require('plugins.nvim-lspconfig'),  -- LSP: Base configuraiton plugin.
  require('plugins.mason'),           -- LSP: Language server installer.
  require('plugins.mason-lspconfig'), -- LSP: Automatically installs defined LSPs.
  require('plugins.nvim-cmp'),        -- LSP: suggestions & autocompletes.
  require('plugins.flutter-tools'),   -- LSP: Flutter
  require('plugins.nvim-jdtls'),      -- LSP: Java
  require('plugins.conform'),         -- FORMATTER: For more specific cases where our LSP plugins do poorly in (i.e. markdown).
  require('plugins.nvim-lint'),       -- LINTER: For more specific cases where our LSP plugins do poorly in (i.e. markdown).
  require('plugins.git-blame'),       -- Git blame on lines.
  -- require('plugins.bufferline'),      -- Buffer tab bar.
  require('plugins.nvim-tree'),       -- File tree.
  -- require('plugins.lualine'),         -- Footer with information about repo, OS, files, etc.
  require('plugins.vim-bbye'),        -- Fix the stupid fucking issue of closing an entire new tab when closing one buffer in said tab.
  require('plugins.vim-dadbod'),      -- Creates connection to databases to view and edit them.
  require('plugins.toggleterm'),      -- Open terminals.
  require('plugins.dashboard'),       -- Dashboard for a cool welcome screen.
  require('plugins.vimtex'),          -- LaTeX

  -- Color schemes.
  require('plugins.vim-moonfly-colors'),
  require('plugins.vim-nightfly-colors'),
  require('plugins.seoul256'),
  require('plugins.kanagawa'),
  require('plugins.tokyonight'),
  require('plugins.bamboo'),
})
