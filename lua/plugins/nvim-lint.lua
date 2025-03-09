-- https://www.youtube.com/watch?v=ybUE4D80XSk
return {
  'mfussenegger/nvim-lint',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local lint = require('lint')

    lint.linters_by_ft = {
      markdown = { 'markdownlint-cli2' },
    }

    lint.linters['markdownlint-cli2'].args = {
      '--config', '/home/flqn/.markdownlint.yaml', '--',
    }

    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertEnter' }, {
      pattern = { '*.md' },
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
