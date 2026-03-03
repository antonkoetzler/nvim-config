-- Better syntax highlighting and code understanding.
-- NOTE: nvim-treesitter main branch does not support lazy-loading.
-- Highlighting is handled by Neovim's built-in treesitter integration automatically.
return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    -- Install parsers for common languages (async, no-op if already installed).
    require('nvim-treesitter').install({
      'lua', 'dart', 'python', 'javascript', 'typescript', 'json', 'yaml', 'markdown',
    })
  end,
}
