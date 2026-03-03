-- Toggle comments with gcc (line) and gc (motion).
return {
  'numToStr/Comment.nvim',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    require('Comment').setup()
  end,
}
