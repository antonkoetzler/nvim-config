-- All LSP packages (not including framework/language specific packages like flutter-tools.nvim).
return {
  -- LSP installer.
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },

  -- Mason configuration and contains which LSPs to automatically install.
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'mason.nvim' },
    config = function()
      -- Automatically installed LSPs.
      require('mason-lspconfig').setup({
        ensure_installed = { 'lua_ls' },
      })
    end,
  },

  -- Neovim LSP configuration.
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = { globals = { 'vim' } },
            workspace = { library = vim.api.nvim_get_runtime_file('', true) },
          },
        },
      })
    end,
  },

  -- Autocomplete.
  {
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path' },
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        mapping = {
          ['<C-j>'] = require('cmp').mapping.select_next_item(),
          ['<C-k>'] = require('cmp').mapping.select_prev_item(),
          ['<C-y>'] = require('cmp').mapping.confirm({ select = true }),
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'buffer' },
        }),
      })
    end,
  },
}
