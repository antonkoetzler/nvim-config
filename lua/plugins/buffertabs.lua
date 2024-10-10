return {
    'tomiis4/BufferTabs.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('buffertabs').setup({
        border = 'none',
        show_id = true,
        horizontal = 'left',
      })
    end,
}
