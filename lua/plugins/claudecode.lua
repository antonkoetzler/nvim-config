-- Claude Code integration: auto-connects when `claude` CLI is running.
-- Sends file/selection context to Claude Code and applies diffs natively.
return {
  'coder/claudecode.nvim',
  opts = {
    terminal = {
      provider = 'native', -- use Neovim's built-in terminal
    },
  },
  keys = {
    { '<leader>cc', '<cmd>ClaudeCode<CR>', desc = 'Toggle Claude Code' },
    { '<leader>cs', '<cmd>ClaudeCodeSend<CR>', mode = 'v', desc = 'Send selection to Claude' },
  },
}
