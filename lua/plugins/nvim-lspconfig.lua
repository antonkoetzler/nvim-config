-- LSP configuration.
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
              quoteStyle = 'single',
            },
          },
          typescript = {
            format = {
              quoteStyle = 'single',
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

    for _, server_name in ipairs(mason_lspconfig.get_installed_servers()) do
      local opts = custom_settings[server_name] or { on_attach = on_attach }
      lspconfig[server_name].setup(opts)
    end
  end,
}
