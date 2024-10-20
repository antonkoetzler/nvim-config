return {
  'VonHeikemen/lsp-zero.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'williamboman/mason.nvim',
    'L3MON4D3/LuaSnip',
  },
  config = function()
    require('lsp-zero').setup()

    local lspconfig = require('lspconfig')
    local on_attach = require('config.on_attach')

    -- lspconfig setup.
    local lspconfig_defaults = lspconfig.util.default_config
    lspconfig_defaults.capabilities = vim.tbl_deep_extend(
      'force',
      lspconfig_defaults.capabilities,
      require('cmp_nvim_lsp').default_capabilities()
    )

    -- Go.
    lspconfig.gopls.setup({
      on_attach = on_attach,
    })

    -- Lua.
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
      on_attach = on_attach,
    })

    -- Markdown.
    lspconfig.marksman.setup({
      settings = {
        marksman = {
          diagnostics = {
            enable = true,
          },
        },
      },
      on_attach = on_attach,
    })
  end,
}
