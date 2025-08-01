return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup({
      direction = 'float',
      shade_terminals = true,
      start_in_insert = true,
      persist_size = true,
      persist_mode = true,
    })

    -- Create one persistent floating terminal
    local Terminal = require('toggleterm.terminal').Terminal
    local float_term = Terminal:new({
      direction = 'float',
      hidden = true,
    })

    function _G.toggle_float_term()
      float_term:toggle()
    end
  end,
}
