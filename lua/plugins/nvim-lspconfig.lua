return {
  'neovim/nvim-lspconfig',
  depedencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    local lspconfig = require('lspconfig')
    local on_attach = require('config.on_attach')
    local mason_lspconfig = require('mason-lspconfig')

    mason_lspconfig.setup({
      automatic_installation = true,
    })

    local custom_settings = {
      gopls = {
        on_attach = function(client, bufnr)
          on_attach(client, bufnr)
          vim.bo[bufnr].expandtab = false
          vim.bo[bufnr].tabstop = 4
          vim.bo[bufnr].shiftwidth = 4
        end,
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
          },
        },
      },
      tsserver = {
        on_attach = on_attach,
        settings = {
          javascript = {
            format = {
              quoteStyle = "single",
            },
          },
          typescript = {
            format = {
              quoteStyle = "single",
            },
          },
        },
      },
      lua_ls = {
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' },
            },
          },
        },
      },
    }

    mason_lspconfig.setup_handlers({
      function(server_name)
        if custom_settings[server_name] then
          lspconfig[server_name].setup(custom_settings[server_name])
        else
          lspconfig[server_name].setup({
            on_attach = on_attach,
          })
        end
      end,
    })
  end,
}
