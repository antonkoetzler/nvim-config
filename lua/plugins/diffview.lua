-- Git diff viewer: file list on the left, side-by-side diff on the right.
return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggleFiles' },
  keys = {
    { '<leader>gD', '<cmd>DiffviewOpen<CR>', desc = 'Open diffview' },
    { '<leader>gX', '<cmd>DiffviewClose<CR>', desc = 'Close diffview' },
  },
}
