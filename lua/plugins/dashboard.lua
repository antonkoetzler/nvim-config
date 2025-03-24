return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'MaximilianLloyd/ascii.nvim',
  },
  config = function()
    local dashboard = require('alpha.themes.dashboard')

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

    -- If the terminal is too small, let's avoid padding issues by clamping it
    local max_padding = math.floor((total_lines - header_height) / 2)
    local padding_top = math.max(max_padding, 0)
    local available_space = total_lines - header_height

    -- If padding top is larger than available space, we reduce it to fit the terminal size
    if padding_top > available_space then
      padding_top = available_space
    end

    -- If we still don't have enough space, we will skip the padding altogether
    if total_lines < header_height then
      padding_top = 0
    end

    dashboard.config.layout = {
      { type = "padding", val = padding_top },
      dashboard.section.header,
    }

    require('alpha').setup(dashboard.opts)
  end,
}

