# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This is a personal Neovim configuration using Lua. It manages plugins via [lazy.nvim](https://github.com/folke/lazy.nvim).

## Architecture

**Entry point**: `init.lua` requires three modules in order:
1. `config.settings` — Vim options (tab width, line numbers, search, Neovide settings)
2. `config.shortcuts` — All keybindings (leader = Space)
3. `config.lazy` — Bootstraps lazy.nvim and imports all plugins

**Plugin files**: Each plugin lives in its own file under `lua/plugins/`. The lazy.nvim setup imports the entire directory via `{ import = 'plugins' }`. New plugins get their own file here.

## Key Conventions

- **Tab/indent**: 2 spaces (`shiftwidth`, `tabstop`, `softtabstop` all set to 2)
- **Lazy loading**: Prefer `cmd`, `keys`, or `event` triggers over `lazy = false`. Use `lazy = false` only if a plugin must be available before any trigger fires.
- **Lazy triggers by type**:
  - `cmd = 'Foo'` — load when user runs `:Foo`
  - `event = { 'BufReadPost', 'BufNewFile' }` — load when a buffer is opened (LSP, treesitter, comment)
  - `keys = { { '<leader>x', ... } }` — load on keypress (only use when the keymap lives in the plugin spec, not shortcuts.lua)
- **Keybindings**: Use the `map()` helper (`local map = vim.keymap.set`) for all new keybindings. Never use `vim.api.nvim_set_keymap`.
- **Scope.nvim**: Buffers are scoped per tab, not global — buffer navigation (`<leader>p/n`) only cycles within the current tab.
- **Mason**: Only `lua_ls` is auto-installed. Other LSPs must be added explicitly in `lua/plugins/lsp.lua`.
- **Plugin file naming**: Match the plugin's primary name (e.g., `nvim-tree.lua`, `lsp.lua`). One plugin per file unless plugins are tightly coupled (e.g., mason + mason-lspconfig + nvim-lspconfig in `lsp.lua`).
- **No hardcoded paths**: Never commit OS-specific paths (Windows, absolute home dirs, etc.).

## Keybindings Reference

| Key | Action |
|-----|--------|
| `<leader>ff` | Telescope find files |
| `<leader>fg` | Telescope live grep |
| `<leader>fh` | Telescope buffers |
| `<leader>ft` | Themery theme picker |
| `<leader>e` | Toggle nvim-tree |
| `<leader>x` | Delete buffer (vim-bbye) |
| `<leader>p/n` | Prev/next buffer |
| `<leader>tc/tx/tn/tp` | Tab create/close/next/prev |
| `<leader>s/v` | Horizontal/vertical split |
| `<leader>1-5` | Jump to split 1-5 |
| `<M-h/j/k/l>` | Resize splits (Alt+hjkl) |
| `<C-a>` | Accept neocodeium suggestion |
| `gd/gh/gr/ga` | LSP: definition/hover/rename/actions |
| `gp/ge` | LSP: prev/next diagnostic |
| `gcc` / `gc{motion}` | Comment.nvim: toggle comment |
| `<leader>gdh/gdv` | Fugitive: diff current file (h/v split) |
| `<leader>gD` | Diffview: open full diff panel |
| `<leader>gX` | Diffview: close diff panel |
| `<leader>cc` | Claude Code: toggle terminal |
| `<leader>cs` | Claude Code: send selection (visual mode) |

## Plugin Overview

| Plugin | Purpose |
|--------|---------|
| `color-scheme` | themery.nvim (persistent picker) + all themes (lazy = true) |
| `nvim-tree` | File explorer sidebar |
| `telescope` | Fuzzy finder (files, grep, buffers) |
| `vim-bbye` | Clean buffer deletion without closing splits |
| `scope.nvim` | Per-tab buffer scoping |
| `lsp.lua` | Mason + mason-lspconfig + nvim-lspconfig + nvim-cmp |
| `flutter-tools` | Flutter/Dart LSP with widget guides |
| `treesitter` | Syntax highlighting and code parsing |
| `lualine` | Status line (mode, branch, diagnostics, file) |
| `comment` | Toggle comments (`gcc`, `gc`) |
| `diffview` | Git diff viewer (file list + side-by-side diff) |
| `vim-fugitive` | Git commands and split diffs |
| `neocodeium` | Inline AI autocomplete (Windsurf free tier) |
| `claudecode` | Claude Code terminal integration |
| `nvim-dap` | Debug adapter protocol |

## Testing Protocol

**Always test config changes before calling them done.** Neovim has good headless tooling.

```bash
# Test clean startup (no errors on launch)
nvim --headless -c "quit" 2>&1

# Test lazy-loaded plugins (triggers BufReadPost/BufNewFile events)
nvim --headless -c "edit /path/to/any/file.lua" -c "quit" 2>&1

# Test a specific module loads
nvim --headless -c "lua require('plugin-name')" -c "quit" 2>&1

# Test a cmd-triggered plugin
nvim --headless -c "SomeCommand" -c "quit" 2>&1
```

Any `Error detected` or `Failed to run` in the output is a bug — fix it before finishing. Filter out known noise (`Downloading`, `Language installed`, `INFO`) to see signal clearly.

## Adding Plugins

Create a new file in `lua/plugins/` returning a lazy.nvim spec table:

```lua
return {
  'author/plugin-name',
  cmd = 'PluginCommand',  -- or event/keys for lazy loading
  config = function()
    require('plugin-name').setup({})
  end,
}
```

## Claude Code Integration (claudecode.nvim)

`claudecode.nvim` bridges Neovim with the Claude Code CLI using the same WebSocket/MCP protocol as the official VS Code extension.

**Usage**: Run `claude` in your terminal — it auto-connects to Neovim. No extra steps needed.

**What it provides**:
- Real-time file/selection context sent to Claude Code automatically
- Claude's diffs applied natively to Neovim buffers (with accept/reject)
- File tree sync (Claude knows what files you have open)

**Keymaps**: `<leader>cc` toggles the Claude terminal, `<leader>cs` (visual) sends a selection. Check `:ClaudeCodeStatus` to verify connection.

**Neocodeium**: Keep it running alongside claudecode.nvim — claudecode has no inline autocomplete. Neocodeium handles completions, claudecode handles context.

## Neovide

Neovide-specific settings in `config/settings.lua` disable cursor and scroll animations. All are guarded by `vim.g.neovide` checks (currently they set globals unconditionally — that's fine since unused globals are harmless outside Neovide).
