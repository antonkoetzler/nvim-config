return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'MaximilianLloyd/ascii.nvim',
  },
  config = function()
    local dashboard = require('alpha.themes.dashboard')
    local ascii = require('ascii')

    dashboard.section.header.val = {
      "              ,                                  ",
      "              \\`-._           __                 ",
      "               \\\\  `-..____,.'  `.               ",
      "                :`.         /    \\`.             ",
      "                :  )       :      : \\            ",
      "                 ;'        '   ;  |  :           ",
      "                 )..      .. .:.`.;  :           ",
      "                /::...  .:::...   ` ;            ",
      "                ; _ '    __        /:\\           ",
      "                `:o>   /\\o_>      ;:. `.         ",
      "               `-`.__ ;   __..--- /:.   \\        ",
      "               === \\_/   ;=====_.':.     ;       ",
      "                ,/'`--'...`--....        ;       ",
      "                     ;                    ;      ",
      "                   .'                      ;     ",
      "                 .'                        ;     ",
      "               .'     ..     ,      .       ;    ",
      "              :       ::..  /      ;::.     |    ",
      "             /      `.;::.  |       ;:..    ;    ",
      "            :         |:.   :       ;:.    ;     ",
      "            :         ::     ;:..   |.    ;      ",
      "             :       :;      :::....|     |      ",
      "             /\\     ,/ \\      ;:::::;     ;      ",
      "           .:. \\:..|    :     ; '.--|     ;      ",
      "          ::.  :''  `-.,,;     ;'   ;     ;      ",
      "       .-'. _.'\\      / `;      \\,__:      \\     ",
      "       `---'    `----'   ;      /    \\,.,,,/     ",
      "                          `----`                 ",
      "",
      "  __ _ _ __ | |_ ___  _ __    _ ____   _(_)_ __ ___  ",
      " / _` | '_ \\| __/ _ \\| '_ \\  | '_ \\ \\ / / | '_ ` _ \\ ",
      "| (_| | | | | || (_) | | | |_| | | \\ V /| | | | | | |",
      " \\__,_|_| |_|\\__\\___/|_| |_(_)_| |_|\\_/ |_|_| |_| |_|",
      "                                                      "
    }
    dashboard.section.buttons.val = {}

    -- Calculate top padding to vertically center the header
    local header_height = #dashboard.section.header.val
    local total_lines = vim.o.lines or 24
    local padding_top = math.floor((total_lines - header_height) / 2)

    dashboard.config.layout = {
      { type = "padding", val = padding_top },
      dashboard.section.header,
      --[[ { type = "padding", val = 2 },
      dashboard.section.buttons, ]]
    }

    require('alpha').setup(dashboard.opts)
  end,
}

