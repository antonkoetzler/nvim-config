return {
  'maxmx03/fluoromachine.nvim',
  name = 'fluoromachine',
  lazy = false,
  priority = 1000,
  config = function()
    local fm = require 'fluoromachine'

    fm.setup {
      glow = false,
      theme = 'retrowave',
      transparent = true,
    }
  end,
};
