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
    dashboard.section.header.val = ascii.art.animals.cats.luna

    require('alpha').setup(dashboard.opts)
  end,
}
