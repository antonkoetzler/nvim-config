return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'MaximilianLloyd/ascii.nvim',
  },
  config = function()
    local dashboard = require('alpha.themes.dashboard')
    local ascii = require('ascii')
    -- dashboard.section.header.val = dashboard.section.header.val
    -- dashboard.section.header.val = ascii.art.animals.cats.luna
    dashboard.section.header.val = {
      "             _                           _           ",
      "  __ _ _ __ | |_ ___  _ __    _ ____   _(_)_ __ ___  ",
      " / _` | '_ \\| __/ _ \\| '_ \\  | '_ \\ \\ / / | '_ ` _ \\ ",
      "| (_| | | | | || (_) | | | |_| | | \\ V /| | | | | | |",
      " \\__,_|_| |_|\\__\\___/|_| |_(_)_| |_|\\_/ |_|_| |_| |_|",
      "                                                      "
    }

    require('alpha').setup(dashboard.opts)
  end,
}
