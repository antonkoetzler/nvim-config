-- Window picker when opening a file with multiple windows active.
return {
  's1n7ax/nvim-window-picker',
  name = 'window-picker',
  event = 'VeryLazy',
  version = '2.*',
  config = function()
    -- Set up window picker
    require('window-picker').setup({
      show_prompt = true,
      prompt_message = 'Pick window: ',
      filter_func = nil,
    })
  end,
}
