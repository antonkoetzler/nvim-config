# Installation

1. Clone the repo into `~/.config` (Linux) or `C:\Users\<Username>\AppData\Local` (Windows);
1. Make sure you have Go, Lua, Node, & Ripgrep installed.

# How do do various things with my config

## Resolving merge conflicts

1. `:DiffviewOpen`;
2. `[x` & `]x` to traverse conflicts;
3. `2do` to accept ours, `3do`  to accept theirs;
4. `:DiffviewClose` when finished resolving conflicts;
5. `Save file`.

## Add a database connection

1. `:DBUI`;
2. `Press enter on "Add connection"`.

# TODO

1. Solve the no files open lsp dianostics issue (proactive-lsp plugin);
2. Markdown LSP that formats like with VSCode.
