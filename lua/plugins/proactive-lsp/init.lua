return {
  dir = "~/.config/nvim/lua/plugins/proactive-lsp",
  config = function()
    vim.api.nvim_create_user_command('HelloWorld', function()
      print('Hello, World!')
    end, {})
    vim.cmd('HelloWorld')
  end,
}

