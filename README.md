# My Neovim configuration 💻

## Installation

1. Clone the repo into `~/.config` (Unix) or `C:\Users\<Username>\AppData\Local` (Windows);
1. Make sure you have Go, Lua, Node, Ripgrep, and jdtls installed;
1. Install `markdownlint` & `markdownlint-cli2`.

## How do do various things with my config

#### Resolving merge conflicts

1. `:DiffviewOpen`;
1. `[x` & `]x` to traverse conflicts;
1. `2do` to accept ours, `3do`  to accept theirs;
1. `:DiffviewClose` when finished resolving conflicts;
1. `Save file`.

#### Add a database connection

1. Make `toggleterm` usable
1. Make `markdownlint` actually format
1. `:DBUI`;
1. `Press enter on "Add connection"`.

#### TODO

1. Make a list of keybindings;
2. Git files diff list and better keybindings for merge resolutions and file git diff;
3. Fix Flutter LSP stopping when renaming a file that is in the buffer list.
