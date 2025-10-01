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

      -- Global LSP keymaps.
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(ev)
          local opts = { buffer = ev.buf, silent = true }

          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)                   -- Go to definition.
          vim.keymap.set('n', 'gh', vim.lsp.buf.hover, opts)                        -- Hover.
          vim.keymap.set('n', 'gr', vim.lsp.buf.rename, opts)                       -- Rename.
          vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, opts)                  -- Code actions.
          vim.keymap.set('n', 'gp',
            function() vim.diagnostic.jump({ count = -1, float = true }) end, opts) -- Previous diagnostic.
          vim.keymap.set('n', 'ge',
            function() vim.diagnostic.jump({ count = 1, float = true }) end, opts)  -- Next diagnostic.

          -- Autoformat on save if server supports it
          if vim.lsp.buf.format then
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = ev.buf,
              callback = function()
                vim.lsp.buf.format({ async = false })
              end,
            })
          end
        end,
      })

      -- Lua.
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
      
      -- Set completeopt to disable built-in completion
      vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
      
      cmp.setup({
        mapping = {
          ['<C-n>'] = require('cmp').mapping.select_next_item({ behavior = require('cmp').SelectBehavior.Insert }),
          ['<C-p>'] = require('cmp').mapping.select_prev_item({ behavior = require('cmp').SelectBehavior.Insert }),
          ['<C-j>'] = require('cmp').mapping.select_next_item(),
          ['<C-k>'] = require('cmp').mapping.select_prev_item(),
          ['<C-y>'] = require('cmp').mapping.confirm({ select = true }),
          ['<C-Space>'] = require('cmp').mapping.complete(),
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'buffer' },
        }),
      })
    end,
  },
}
