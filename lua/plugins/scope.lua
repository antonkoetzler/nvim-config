-- Keep buffers scoped to the tab rather than having a global buffer list.
return {
  'tiagovla/scope.nvim',
  config = function()
    require('scope').setup()
  end,
}
