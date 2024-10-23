return {
  'neovim/nvim-lspconfig',
  depedencies = {
    'williamboman/mason.nvim',
  },
  config = function()
    local lspconfig = require('lspconfig')
    local on_attach = require('config.on_attach')

    -- Lua.
    lspconfig.lua_ls.setup({
      on_attach = on_attach,
    })

    -- Dart.
    lspconfig.dartls.setup({
      on_attach = on_attach,
      settings = {
        dart = {
          widgetGuides = {
            enabled = true,
          },
        },
      },
    })
  end,
}
