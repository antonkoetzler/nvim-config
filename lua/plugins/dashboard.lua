return {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup({
      theme = 'hyper',
      config = {
        header = {
          '   ___   _  ____________  _  ____    _  ____  _  __________ _   ________  ___',
          '  / _ | / |/ /_  __/ __ \\/ |/ /\\ \\  ( )/ __/ / |/ / __/ __ \\ | / /  _/  |/  /',
          ' / __ |/    / / / / /_/ /    /  \\ \\ |/_\\ \\  /    / _// /_/ / |/ // // /|_/ / ',
          '/_/ |_/_/|_/ /_/  \\____/_/|_/    \\_\\ /___/ /_/|_/___/\\____/|___/___/_/  /_/  ',
          '',
        },
        disable_move = true,
      },
    })
  end,
}
