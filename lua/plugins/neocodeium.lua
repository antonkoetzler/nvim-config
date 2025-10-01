-- AI autocompletion.
return {
  'monkoose/neocodeium',
  event = 'VeryLazy',
  config = function()
    local neocodeium = require('neocodeium')
    neocodeium.setup()

    -- Accept.
    vim.keymap.set('i', '<C-a>', neocodeium.accept)
  end,
}
