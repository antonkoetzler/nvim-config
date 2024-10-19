return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'L3MON4D3/LuaSnip',
  },
  config = function()
    local cmp = require('cmp')

    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
      },
      sources = {
        {
          name = 'nvim_lsp',
          entry_filter = function(entry)
            -- Disables autocomplete items like constructors/functions that autofill the arguments when selected.
            return entry.completion_item.kind ~= 4
          end,
        },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'luasnip' },
      },
    })
  end,
}
