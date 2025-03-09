return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local startify = require('alpha.themes.startify')
    -- available: devicons, mini, default is mini
    -- if provider not loaded and enabled is true, it will try to use another provider
    startify.file_icons.provider = 'devicons'

    -- Generate ASCII header from text
    local dashboard = require('alpha.themes.dashboard')
    startify.section.header.val = dashboard.section.header.val
    startify.section.header.val = {
      [[                                                 ]],
      [[  █████╗ ███╗   ██╗████████╗ ██████╗ ███╗   ██╗███████╗    ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
      [[ ██╔══██╗████╗  ██║╚══██╔══╝██╔═══██╗████╗  ██║██╔════╝    ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
      [[ ███████║██╔██╗ ██║   ██║   ██║   ██║██╔██╗ ██║███████╗    ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
      [[ ██╔══██║██║╚██╗██║   ██║   ██║   ██║██║╚██╗██║╚════██║    ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
      [[ ██║  ██║██║ ╚████║   ██║   ╚██████╔╝██║ ╚████║███████║    ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
      [[ ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝    ╚═════╝ ╚═╝  ╚═══╝╚══════╝    ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
      [[                                                 ]],
    }

    require('alpha').setup(startify.opts)
  end,
}
