-- lua/plugins/cmp.lua
return {
  'hrsh7th/nvim-cmp',  -- Main completion plugin
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',  -- LSP source for nvim-cmp
    'hrsh7th/cmp-buffer',     -- Buffer source for completion
    'hrsh7th/cmp-path',       -- Path source for file paths
    'hrsh7th/cmp-cmdline',    -- Command line source for cmdline completions
  },
  config = function()
    local cmp = require('cmp')  -- Load nvim-cmp

    cmp.setup({
      snippet = {
        expand = function(args)
          -- Function to expand snippets, using luasnip
          require('luasnip').lsp_expand(args.body)
        end,
      },
      mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item(),  -- Navigate to next completion item
        ['<C-p>'] = cmp.mapping.select_prev_item(),  -- Navigate to previous completion item
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),  -- Confirm selected item
        ['<C-Space>'] = cmp.mapping.complete(),  -- Trigger completion
      },
      sources = {
        { name = 'nvim_lsp' },  -- Use LSP for completion
        { name = 'buffer' },     -- Use buffer content for completion
        { name = 'path' },       -- Use filesystem paths for completion
      },
    })
  end,
}
